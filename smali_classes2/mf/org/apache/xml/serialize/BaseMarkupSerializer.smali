.class public abstract Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.super Ljava/lang/Object;
.source "BaseMarkupSerializer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lmf/org/apache/xml/serialize/DOMSerializer;
.implements Lmf/org/apache/xml/serialize/Serializer;


# instance fields
.field protected _docTypePublicId:Ljava/lang/String;

.field protected _docTypeSystemId:Ljava/lang/String;

.field private _elementStateCount:I

.field private _elementStates:[Lmf/org/apache/xml/serialize/ElementState;

.field protected _encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

.field protected _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field protected _indenting:Z

.field private _output:Ljava/io/OutputStream;

.field private _preRoot:Ljava/util/Vector;

.field protected _prefixes:Ljava/util/Hashtable;

.field private _prepared:Z

.field protected _printer:Lmf/org/apache/xml/serialize/Printer;

.field protected _started:Z

.field private _writer:Ljava/io/Writer;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected final fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

.field protected final fStrBuffer:Ljava/lang/StringBuffer;

.field protected features:S


# direct methods
.method protected constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    .line 133
    new-instance v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    .line 219
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 252
    const/16 v1, 0xa

    new-array v1, v1, [Lmf/org/apache/xml/serialize/ElementState;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 255
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    .line 256
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    new-instance v2, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v2}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v2, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 271
    return-object p0
.end method

.method public asDOMSerializer()Lmf/org/apache/xml/serialize/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 279
    return-object p0
.end method

.method public asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 263
    return-object p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 864
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 865
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ATTLIST "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 868
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 870
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 871
    if-eqz p4, :cond_0

    .line 872
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 873
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 875
    :cond_0
    if-eqz p5, :cond_1

    .line 876
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p0, p5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 880
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 881
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_2

    .line 882
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :cond_2
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected characters(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1306
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    .line 1311
    .local v1, "state":Lmf/org/apache/xml/serialize/ElementState;
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v2, :cond_2

    .line 1315
    :cond_0
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v2, :cond_1

    .line 1316
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "<![CDATA["

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1317
    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    .line 1319
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    .line 1320
    .local v0, "saveIndent":I
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 1321
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printCDATAText(Ljava/lang/String;)V

    .line 1322
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 1341
    .end local v0    # "saveIndent":I
    :goto_0
    return-void

    .line 1328
    :cond_2
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v2, :cond_3

    .line 1333
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    .line 1334
    .restart local v0    # "saveIndent":I
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 1335
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v5, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 1336
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_0

    .line 1338
    .end local v0    # "saveIndent":I
    :cond_3
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v4, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 12
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5d

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v11

    .line 490
    .local v11, "state":Lmf/org/apache/xml/serialize/ElementState;
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v0, :cond_9

    .line 496
    :cond_0
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    .line 500
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    .line 501
    .local v10, "saveIndent":I
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 503
    add-int v7, p2, p3

    .line 504
    .local v7, "end":I
    move v9, p2

    .local v9, "index":I
    :goto_0
    if-lt v9, v7, :cond_2

    .line 533
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 555
    .end local v7    # "end":I
    .end local v9    # "index":I
    .end local v10    # "saveIndent":I
    :goto_1
    return-void

    .line 505
    .restart local v7    # "end":I
    .restart local v9    # "index":I
    .restart local v10    # "saveIndent":I
    :cond_2
    aget-char v6, p1, v9

    .line 506
    .local v6, "ch":C
    if-ne v6, v2, :cond_3

    add-int/lit8 v0, v9, 0x2

    if-ge v0, v7, :cond_3

    .line 507
    add-int/lit8 v0, v9, 0x1

    aget-char v0, p1, v0

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v9, 0x2

    aget-char v0, p1, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    .line 508
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 509
    add-int/lit8 v9, v9, 0x2

    .line 504
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 512
    :cond_3
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 514
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v7, :cond_4

    .line 515
    aget-char v0, p1, v9

    const/4 v1, 0x1

    invoke-virtual {p0, v6, v0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 552
    .end local v6    # "ch":C
    .end local v7    # "end":I
    .end local v9    # "index":I
    .end local v10    # "saveIndent":I
    .end local v11    # "state":Lmf/org/apache/xml/serialize/ElementState;
    :catch_0
    move-exception v8

    .line 553
    .local v8, "except":Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 518
    .end local v8    # "except":Ljava/io/IOException;
    .restart local v6    # "ch":C
    .restart local v7    # "end":I
    .restart local v9    # "index":I
    .restart local v10    # "saveIndent":I
    .restart local v11    # "state":Lmf/org/apache/xml/serialize/ElementState;
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is an invalid XML character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :cond_5
    const/16 v0, 0x20

    if-lt v6, v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x7f

    if-ne v6, v0, :cond_7

    .line 523
    :cond_6
    const/16 v0, 0xa

    if-eq v6, v0, :cond_7

    const/16 v0, 0xd

    if-eq v6, v0, :cond_7

    const/16 v0, 0x9

    if-ne v6, v0, :cond_8

    .line 524
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    .line 528
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]>&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, ";<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    .line 539
    .end local v6    # "ch":C
    .end local v7    # "end":I
    .end local v9    # "index":I
    .end local v10    # "saveIndent":I
    :cond_9
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v0, :cond_a

    .line 544
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    .line 545
    .restart local v10    # "saveIndent":I
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 546
    const/4 v4, 0x1

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    .line 547
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_1

    .line 549
    .end local v10    # "saveIndent":I
    :cond_a
    const/4 v4, 0x0

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1850
    return-void
.end method

.method protected cleanup()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 336
    return-void
.end method

.method final clearDocumentState()V
    .locals 1

    .prologue
    .line 1780
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 1781
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 650
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    .line 656
    .local v1, "state":Lmf/org/apache/xml/serialize/ElementState;
    const-string v2, "-->"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 657
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 658
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 665
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 666
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    .line 667
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 681
    :cond_2
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 682
    iput-boolean v4, v1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 683
    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_0

    .line 660
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 672
    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_5

    .line 673
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 674
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 675
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 676
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    .line 677
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_2

    .line 678
    iput-boolean v4, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public comment([CII)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 637
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected content()Lmf/org/apache/xml/serialize/ElementState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1263
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 1264
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1266
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_0

    .line 1267
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1268
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    .line 1273
    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1275
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 1280
    :cond_1
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 1284
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 1286
    :cond_2
    return-object v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 845
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 846
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ELEMENT "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 849
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 851
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :cond_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endCDATA()V
    .locals 2

    .prologue
    .line 700
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 701
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 702
    return-void
.end method

.method public endDTD()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 755
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    .line 757
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 773
    return-void
.end method

.method public endNonEscaping()V
    .locals 2

    .prologue
    .line 718
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 719
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 720
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 814
    return-void
.end method

.method public endPreserving()V
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 737
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 738
    return-void
.end method

.method protected enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "preserveSpace"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1715
    iget v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 1720
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v3, v3

    add-int/lit8 v3, v3, 0xa

    new-array v1, v3, [Lmf/org/apache/xml/serialize/ElementState;

    .line 1721
    .local v1, "newStates":[Lmf/org/apache/xml/serialize/ElementState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 1723
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v0, v3

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 1725
    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    .line 1728
    .end local v0    # "i":I
    .end local v1    # "newStates":[Lmf/org/apache/xml/serialize/ElementState;
    :cond_0
    iget v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 1729
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v2, v3, v4

    .line 1730
    .local v2, "state":Lmf/org/apache/xml/serialize/ElementState;
    iput-object p1, v2, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    .line 1731
    iput-object p2, v2, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    .line 1732
    iput-object p3, v2, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    .line 1733
    iput-boolean p4, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 1734
    const/4 v3, 0x1

    iput-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 1735
    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 1736
    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 1737
    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 1738
    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 1739
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    iput-object v3, v2, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    .line 1741
    const/4 v3, 0x0

    iput-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    .line 1742
    return-object v2

    .line 1722
    .end local v2    # "state":Lmf/org/apache/xml/serialize/ElementState;
    .restart local v0    # "i":I
    .restart local v1    # "newStates":[Lmf/org/apache/xml/serialize/ElementState;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    .line 1721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1724
    :cond_2
    new-instance v3, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v3}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v3, v1, v0

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 912
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected fatalError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1833
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    .line 1834
    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1835
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1840
    return-void

    .line 1838
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 2

    .prologue
    .line 1699
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract getEntityRef(I)Ljava/lang/String;
.end method

.method protected getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1795
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    .line 1796
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1797
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1810
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1800
    :cond_1
    iget v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez v3, :cond_2

    move-object v1, v2

    .line 1801
    goto :goto_0

    .line 1803
    :cond_2
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .local v0, "i":I
    :goto_1
    if-gtz v0, :cond_3

    move-object v1, v2

    .line 1810
    goto :goto_0

    .line 1804
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    if-eqz v3, :cond_4

    .line 1805
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1806
    .restart local v1    # "prefix":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1803
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public ignorableWhitespace([CII)V
    .locals 5
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 564
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    .line 569
    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v3, :cond_0

    .line 570
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->setThisIndent(I)V

    .line 571
    move v1, p2

    .local v1, "i":I
    move v2, p3

    .end local p3    # "length":I
    .local v2, "length":I
    :goto_0
    add-int/lit8 p3, v2, -0x1

    .end local v2    # "length":I
    .restart local p3    # "length":I
    if-gtz v2, :cond_1

    .line 577
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 572
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    aget-char v4, p1, v1

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    add-int/lit8 v1, v1, 0x1

    move v2, p3

    .end local p3    # "length":I
    .restart local v2    # "length":I
    goto :goto_0

    .line 574
    .end local v1    # "i":I
    .end local v2    # "length":I
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 575
    .local v0, "except":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 894
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 895
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 899
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_0
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected isDocumentState()Z
    .locals 1

    .prologue
    .line 1775
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected leaveElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1755
    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-lez v1, :cond_0

    .line 1757
    iput-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    .line 1759
    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 1760
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v1, v1, v2

    return-object v1

    .line 1762
    :cond_0
    const-string v1, "http://apache.org/xml/serializer"

    const-string v2, "Internal"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "severity"    # S
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, -0x1

    .line 1822
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    .line 1823
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1824
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 1825
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-short p2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1826
    iget-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;)V

    iput-object v0, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 1827
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    return-object v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 955
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 956
    if-eqz p2, :cond_2

    .line 957
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " PUBLIC "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 961
    if-eqz p3, :cond_0

    .line 962
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 963
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 971
    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 972
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_1

    .line 973
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 977
    :cond_1
    return-void

    .line 966
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 968
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " SYSTEM "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 341
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    if-eqz v2, :cond_0

    .line 385
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-nez v2, :cond_1

    .line 345
    const-string v2, "http://apache.org/xml/serializer"

    .line 346
    const-string v3, "NoWriterSupplied"

    .line 345
    invoke-static {v2, v3, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncodingInfo()Lmf/org/apache/xml/serialize/EncodingInfo;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 355
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/EncodingInfo;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    .line 359
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    iput-boolean v7, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    .line 361
    new-instance v2, Lmf/org/apache/xml/serialize/IndentPrinter;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xml/serialize/IndentPrinter;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    .line 369
    :goto_1
    iput v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 370
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v1, v2, v5

    .line 371
    .local v1, "state":Lmf/org/apache/xml/serialize/ElementState;
    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    .line 372
    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    .line 373
    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v2

    iput-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 375
    iput-boolean v7, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 376
    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 377
    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 378
    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 379
    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    .line 381
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypePublic()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 382
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    .line 383
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    .line 384
    iput-boolean v7, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    goto :goto_0

    .line 363
    .end local v1    # "state":Lmf/org/apache/xml/serialize/ElementState;
    :cond_3
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    .line 364
    new-instance v2, Lmf/org/apache/xml/serialize/Printer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    goto :goto_1
.end method

.method protected printCDATAText(Ljava/lang/String;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x5d

    const/16 v9, 0x52

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1402
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1469
    return-void

    .line 1403
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1404
    .local v0, "ch":C
    if-ne v0, v10, :cond_4

    .line 1405
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v2, :cond_4

    .line 1406
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_4

    .line 1407
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_4

    .line 1408
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_3

    .line 1411
    iget-short v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_2

    .line 1413
    const-string v4, "http://apache.org/xml/serializer"

    .line 1414
    const-string v5, "EndingCDATA"

    .line 1412
    invoke-static {v4, v5, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1416
    .local v3, "msg":Ljava/lang/String;
    iget-short v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1418
    const/4 v4, 0x3

    const-string v5, "wf-invalid-character"

    iget-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1419
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1420
    new-instance v4, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {v4, v9, v3}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 1423
    :cond_1
    const/4 v4, 0x2

    const-string v5, "cdata-section-not-splitted"

    iget-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1424
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1425
    new-instance v4, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {v4, v9, v3}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 1431
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    const-string v4, "http://apache.org/xml/serializer"

    .line 1432
    const-string v5, "SplittingCDATA"

    .line 1430
    invoke-static {v4, v5, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1437
    .restart local v3    # "msg":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 1434
    invoke-virtual {p0, v3, v8, v7, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1438
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1442
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]]]]><![CDATA[>"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1443
    add-int/lit8 v1, v1, 0x2

    .line 1402
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1447
    :cond_4
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1449
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_5

    .line 1450
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v0, v4, v8}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_1

    .line 1453
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is an invalid XML character"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 1457
    :cond_6
    const/16 v4, 0x20

    if-lt v0, v4, :cond_7

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x7f

    if-ne v0, v4, :cond_8

    .line 1458
    :cond_7
    const/16 v4, 0xa

    if-eq v0, v4, :cond_8

    const/16 v4, 0xd

    if-eq v0, v4, :cond_8

    const/16 v4, 0x9

    if-ne v0, v4, :cond_9

    .line 1459
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 1464
    :cond_9
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]]>&#x"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1465
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1466
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, ";<![CDATA["

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected printDoctypeURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 1611
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1619
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1620
    return-void

    .line 1613
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_2

    .line 1614
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1615
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1612
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1617
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1
.end method

.method protected printEscaped(I)V
    .locals 5
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x10000

    .line 1631
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getEntityRef(I)Ljava/lang/String;

    move-result-object v0

    .line 1632
    .local v0, "charRef":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1633
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1634
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1635
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1649
    :goto_0
    return-void

    .line 1636
    :cond_0
    const/16 v1, 0x20

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_2

    .line 1637
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_4

    .line 1640
    :cond_2
    if-ge p1, v4, :cond_3

    .line 1641
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    .line 1643
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sub-int v2, p1, v4

    shr-int/lit8 v2, v2, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1644
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sub-int v2, p1, v4

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    .line 1647
    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_0
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v7, 0xfc00

    const v6, 0xdc00

    const v5, 0xd800

    .line 1673
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 1684
    return-void

    .line 1674
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1675
    .local v0, "ch":I
    and-int v3, v0, v7

    if-ne v3, v5, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1676
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1677
    .local v2, "lowch":I
    and-int v3, v2, v7

    if-ne v3, v6, :cond_1

    .line 1678
    const/high16 v3, 0x10000

    sub-int v4, v0, v5

    shl-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    sub-int v0, v3, v6

    .line 1679
    add-int/lit8 v1, v1, 0x1

    .line 1682
    .end local v2    # "lowch":I
    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    .line 1673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method final printHex(I)V
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1655
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1659
    return-void
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "preserveSpace"    # Z
    .param p3, "unescaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    .line 1565
    if-eqz p2, :cond_4

    .line 1570
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1596
    :cond_0
    return-void

    .line 1571
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1572
    .local v0, "ch":C
    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    if-eqz p3, :cond_3

    .line 1573
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1570
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1575
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_1

    .line 1583
    .end local v0    # "ch":C
    .end local v1    # "index":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1584
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1585
    .restart local v0    # "ch":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_6

    .line 1586
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    .line 1583
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1588
    :cond_6
    if-eqz p3, :cond_7

    .line 1589
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    .line 1592
    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_3
.end method

.method protected printText([CIIZZ)V
    .locals 5
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
    const/16 v4, 0xd

    const/16 v3, 0xa

    .line 1521
    if-eqz p4, :cond_7

    move v1, p3

    .line 1526
    .end local p3    # "length":I
    .local v1, "length":I
    :goto_0
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "length":I
    .restart local p3    # "length":I
    if-gtz v1, :cond_0

    .line 1556
    :goto_1
    return-void

    .line 1527
    :cond_0
    aget-char v0, p1, p2

    .line 1528
    .local v0, "ch":C
    add-int/lit8 p2, p2, 0x1

    .line 1529
    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    if-eqz p5, :cond_2

    .line 1530
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    .line 1531
    .end local p3    # "length":I
    .restart local v1    # "length":I
    goto :goto_0

    .line 1533
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    goto :goto_0

    .line 1543
    .end local v0    # "ch":C
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_3
    aget-char v0, p1, p2

    .line 1544
    .restart local v0    # "ch":C
    add-int/lit8 p2, p2, 0x1

    .line 1545
    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v4, :cond_5

    .line 1546
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    move v1, p3

    .line 1542
    .end local v0    # "ch":C
    .end local p3    # "length":I
    .restart local v1    # "length":I
    :goto_2
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "length":I
    .restart local p3    # "length":I
    if-gtz v1, :cond_3

    goto :goto_1

    .line 1548
    .restart local v0    # "ch":C
    :cond_5
    if-eqz p5, :cond_6

    .line 1549
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    .line 1550
    .end local p3    # "length":I
    .restart local v1    # "length":I
    goto :goto_2

    .line 1552
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_6
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    .end local v0    # "ch":C
    :cond_7
    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    goto :goto_2
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 584
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 596
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    .line 600
    .local v1, "state":Lmf/org/apache/xml/serialize/ElementState;
    const-string v2, "?>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 601
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 602
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    :goto_0
    if-eqz p2, :cond_0

    .line 606
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 607
    const-string v2, "?>"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 608
    if-ltz v0, :cond_4

    .line 609
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 618
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 619
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    .line 620
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 629
    :cond_2
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 630
    return-void

    .line 604
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 611
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 622
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 623
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5, v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 624
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    .line 625
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_2

    .line 626
    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public reset()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-le v1, v3, :cond_0

    .line 324
    const-string v1, "http://apache.org/xml/serializer"

    .line 325
    const-string v2, "ResetInMiddle"

    .line 324
    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    .line 329
    iput-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 330
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 331
    return v3
.end method

.method public serialize(Lmf/org/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lmf/org/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 451
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 452
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 453
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    .line 454
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    .line 455
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 456
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 458
    :cond_0
    return-void
.end method

.method public serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    .locals 1
    .param p1, "frag"    # Lmf/org/w3c/dom/DocumentFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 429
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 430
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 431
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    .line 432
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 433
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 435
    :cond_0
    return-void
.end method

.method public serialize(Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "elem"    # Lmf/org/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 407
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 408
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 409
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    .line 410
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 411
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 413
    :cond_0
    return-void
.end method

.method protected abstract serializeElement(Lmf/org/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeNode(Lmf/org/w3c/dom/Node;)V
    .locals 14
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 1003
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 1245
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1007
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1008
    .local v11, "text":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1009
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_1

    .line 1010
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_1

    .line 1011
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    .line 1012
    .local v2, "code":S
    packed-switch v2, :pswitch_data_1

    .line 1018
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    .end local v2    # "code":S
    :cond_1
    iget-boolean v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v12

    iget-boolean v12, v12, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v12, :cond_2

    .line 1023
    const/16 v12, 0xa

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 1024
    :cond_2
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    .end local v11    # "text":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1032
    .restart local v11    # "text":Ljava/lang/String;
    iget-short v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_4

    .line 1033
    if-eqz v11, :cond_0

    .line 1034
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_3

    .line 1035
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_3

    .line 1038
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    .line 1039
    .restart local v2    # "code":S
    packed-switch v2, :pswitch_data_2

    .line 1052
    .end local v2    # "code":S
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->startCDATA()V

    .line 1053
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    goto :goto_0

    .line 1058
    :cond_4
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    .end local v11    # "text":Ljava/lang/String;
    :pswitch_3
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v12}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1066
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1067
    .restart local v11    # "text":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1069
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_5

    .line 1070
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_5

    .line 1071
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    .line 1072
    .restart local v2    # "code":S
    packed-switch v2, :pswitch_data_3

    .line 1083
    .end local v2    # "code":S
    :cond_5
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1092
    .end local v11    # "text":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    .line 1093
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    .line 1095
    iget-short v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_6

    .line 1096
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v12

    if-nez v12, :cond_8

    .line 1097
    :cond_6
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_7

    .line 1098
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_7

    .line 1099
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    .line 1100
    .restart local v2    # "code":S
    packed-switch v2, :pswitch_data_4

    .line 1118
    .end local v2    # "code":S
    :cond_7
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    .line 1120
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v13, "&"

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1121
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1122
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    .restart local v2    # "code":S
    :pswitch_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1106
    .local v1, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v1, :cond_0

    .line 1107
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1108
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    .line 1125
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    .end local v2    # "code":S
    :cond_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1126
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :goto_2
    if-eqz v1, :cond_0

    .line 1127
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1128
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    .line 1137
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :pswitch_6
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_9

    .line 1138
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_9

    .line 1139
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    .line 1140
    .restart local v2    # "code":S
    packed-switch v2, :pswitch_data_5

    .line 1149
    .end local v2    # "code":S
    :cond_9
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1154
    :pswitch_7
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_a

    .line 1155
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_a

    .line 1156
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    .line 1157
    .restart local v2    # "code":S
    packed-switch v2, :pswitch_data_6

    .line 1174
    .end local v2    # "code":S
    :cond_a
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeElement(Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 1162
    .restart local v2    # "code":S
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1163
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :goto_3
    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1165
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_3

    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    .end local v2    # "code":S
    :pswitch_9
    move-object v12, p1

    .line 1182
    check-cast v12, Lmf/org/w3c/dom/Document;

    invoke-interface {v12}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v3

    .line 1183
    .local v3, "docType":Lmf/org/w3c/dom/DocumentType;
    if-eqz v3, :cond_c

    .line 1188
    :try_start_0
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 1189
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 1190
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    .line 1191
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    .line 1192
    .local v9, "internal":Ljava/lang/String;
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_b

    .line 1193
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1194
    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v3    # "docType":Lmf/org/w3c/dom/DocumentType;
    .end local v9    # "internal":Ljava/lang/String;
    :cond_c
    :goto_4
    :pswitch_a
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1235
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :goto_5
    if-eqz v1, :cond_0

    .line 1236
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1237
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_5

    .line 1197
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    .restart local v3    # "docType":Lmf/org/w3c/dom/DocumentType;
    :catch_0
    move-exception v10

    .line 1198
    .local v10, "nsme":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1200
    .local v4, "docTypeClass":Ljava/lang/Class;
    const/4 v5, 0x0

    .line 1201
    .local v5, "docTypePublicId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1203
    .local v6, "docTypeSystemId":Ljava/lang/String;
    :try_start_1
    const-string v12, "getPublicId"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1204
    .local v7, "getPublicId":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1205
    const/4 v12, 0x0

    invoke-virtual {v7, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1212
    .end local v7    # "getPublicId":Ljava/lang/reflect/Method;
    :cond_d
    :goto_6
    :try_start_2
    const-string v12, "getSystemId"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1213
    .local v8, "getSystemId":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1214
    const/4 v12, 0x0

    invoke-virtual {v8, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1220
    .end local v8    # "getSystemId":Ljava/lang/reflect/Method;
    :cond_e
    :goto_7
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 1221
    iput-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 1222
    iput-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    .line 1223
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V

    goto :goto_4

    .line 1217
    :catch_1
    move-exception v12

    goto :goto_7

    .line 1208
    :catch_2
    move-exception v12

    goto :goto_6

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 1012
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1039
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1072
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1100
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1140
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1157
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected serializePreRoot()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1383
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 1384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1389
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1391
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1385
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 1386
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_2

    .line 1387
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 1384
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 779
    return-void
.end method

.method public setOutputByteStream(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const-string v1, "http://apache.org/xml/serializer"

    .line 287
    const-string v2, "ArgumentIsNull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "output"

    aput-object v5, v3, v4

    .line 286
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    .line 292
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 293
    return-void
.end method

.method public setOutputCharStream(Ljava/io/Writer;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string v1, "http://apache.org/xml/serializer"

    .line 300
    const-string v2, "ArgumentIsNull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "writer"

    aput-object v5, v3, v4

    .line 299
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    .line 305
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 306
    return-void
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 6
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string v1, "http://apache.org/xml/serializer"

    .line 313
    const-string v2, "ArgumentIsNull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "format"

    aput-object v5, v3, v4

    .line 312
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    .line 317
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 318
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 791
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    .line 792
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    .line 793
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 794
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startCDATA()V
    .locals 2

    .prologue
    .line 691
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 692
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 693
    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 826
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 827
    iput-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 828
    iput-object p3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 470
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 767
    return-void
.end method

.method public startNonEscaping()V
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 710
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 711
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    .line 807
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    return-void
.end method

.method public startPreserving()V
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 728
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 729
    return-void
.end method

.method protected surrogates(IIZ)V
    .locals 3
    .param p1, "high"    # I
    .param p2, "low"    # I
    .param p3, "inContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1474
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    .line 1499
    :goto_0
    return-void

    .line 1479
    :cond_0
    int-to-char v1, p1

    int-to-char v2, p2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    .line 1480
    .local v0, "supplemental":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1482
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 1485
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_2

    .line 1486
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>&#x"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1487
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_0

    .line 1496
    .end local v0    # "supplemental":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 924
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 925
    if-nez p2, :cond_2

    .line 926
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " SYSTEM "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 938
    :goto_0
    if-eqz p4, :cond_0

    .line 939
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " NDATA "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 942
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 943
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_1

    .line 944
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 948
    :cond_1
    return-void

    .line 931
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 932
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " PUBLIC "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 936
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
