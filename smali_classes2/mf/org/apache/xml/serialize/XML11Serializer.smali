.class public Lmf/org/apache/xml/serialize/XML11Serializer;
.super Lmf/org/apache/xml/serialize/XMLSerializer;
.source "XML11Serializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fDOML1:Z

.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespaceCounter:I

.field protected fNamespaces:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>()V

    .line 111
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 132
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    .line 170
    if-eqz p2, :cond_0

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 111
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 171
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 172
    return-void

    .line 170
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
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 111
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 157
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 2
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 111
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 143
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
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

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v11

    .line 191
    .local v11, "state":Lmf/org/apache/xml/serialize/ElementState;
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v0, :cond_7

    .line 197
    :cond_0
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    .line 201
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    .line 202
    .local v10, "saveIndent":I
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 204
    add-int v7, p2, p3

    .line 205
    .local v7, "end":I
    move v9, p2

    .local v9, "index":I
    :goto_0
    if-lt v9, v7, :cond_2

    .line 233
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 258
    .end local v7    # "end":I
    .end local v9    # "index":I
    .end local v10    # "saveIndent":I
    :goto_1
    return-void

    .line 206
    .restart local v7    # "end":I
    .restart local v9    # "index":I
    .restart local v10    # "saveIndent":I
    :cond_2
    aget-char v6, p1, v9

    .line 207
    .local v6, "ch":C
    if-ne v6, v2, :cond_3

    add-int/lit8 v0, v9, 0x2

    if-ge v0, v7, :cond_3

    .line 208
    add-int/lit8 v0, v9, 0x1

    aget-char v0, p1, v0

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v9, 0x2

    aget-char v0, p1, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    .line 209
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v9, v9, 0x2

    .line 205
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 215
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v7, :cond_4

    .line 216
    aget-char v0, p1, v9

    const/4 v1, 0x1

    invoke-virtual {p0, v6, v0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 255
    .end local v6    # "ch":C
    .end local v7    # "end":I
    .end local v9    # "index":I
    .end local v10    # "saveIndent":I
    .end local v11    # "state":Lmf/org/apache/xml/serialize/ElementState;
    :catch_0
    move-exception v8

    .line 256
    .local v8, "except":Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 219
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

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    .line 223
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    .line 228
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]>&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, ";<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    .line 240
    .end local v6    # "ch":C
    .end local v7    # "end":I
    .end local v9    # "index":I
    .end local v10    # "saveIndent":I
    :cond_7
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v0, :cond_8

    .line 245
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    .line 246
    .restart local v10    # "saveIndent":I
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 247
    const/4 v4, 0x1

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V

    .line 248
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_1

    .line 251
    .end local v10    # "saveIndent":I
    :cond_8
    const/4 v4, 0x0

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected final printCDATAText(Ljava/lang/String;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 301
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 369
    return-void

    .line 302
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    .local v0, "ch":C
    if-ne v0, v9, :cond_3

    .line 305
    add-int/lit8 v5, v2, 0x2

    if-ge v5, v3, :cond_3

    .line 306
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_3

    .line 307
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_3

    .line 308
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_2

    .line 311
    iget-short v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_1

    .line 312
    iget-short v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    .line 316
    const-string v5, "http://apache.org/xml/serializer"

    .line 317
    const-string v6, "EndingCDATA"

    .line 315
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x3

    .line 322
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 319
    invoke-virtual {p0, v4, v5, v7, v6}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 324
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v1

    .line 325
    .local v1, "continueProcess":Z
    if-nez v1, :cond_2

    .line 326
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 332
    .end local v1    # "continueProcess":Z
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    const-string v5, "http://apache.org/xml/serializer"

    .line 333
    const-string v6, "SplittingCDATA"

    .line 331
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .restart local v4    # "msg":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 335
    invoke-virtual {p0, v4, v8, v7, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 339
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 343
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, "]]]]><![CDATA[>"

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v2, v2, 0x2

    .line 301
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_3
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 350
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_4

    .line 351
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v0, v5, v8}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_1

    .line 354
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The character \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is an invalid XML character"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v5, v0}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 359
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 360
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 364
    :cond_6
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, "]]>&#x"

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 365
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 366
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, ";<![CDATA["

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1
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
    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 265
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 295
    return-void

    .line 266
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 267
    .local v0, "ch":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 268
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_1

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    .line 265
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0x85

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2028

    if-ne v0, v3, :cond_4

    .line 277
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_1

    .line 279
    :cond_4
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_5

    .line 280
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_5
    const/16 v3, 0x26

    if-ne v0, v3, :cond_6

    .line 283
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_6
    const/16 v3, 0x22

    if-ne v0, v3, :cond_7

    .line 286
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_7
    const/16 v3, 0x20

    if-lt v0, v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 289
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 292
    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

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

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 431
    .local v2, "length":I
    if-eqz p2, :cond_5

    .line 436
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 480
    :cond_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 438
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 440
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_2

    .line 441
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    .line 436
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 447
    :cond_3
    if-eqz p3, :cond_4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 448
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 451
    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    goto :goto_1

    .line 461
    .end local v0    # "ch":C
    .end local v1    # "index":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 462
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 463
    .restart local v0    # "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 465
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_6

    .line 466
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    .line 461
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 468
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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    .line 472
    :cond_7
    if-eqz p3, :cond_8

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 473
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    .line 476
    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

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

    .line 485
    if-eqz p4, :cond_8

    move v1, p3

    .end local p3    # "length":I
    .local v1, "length":I
    move v2, p2

    .line 490
    .end local p2    # "start":I
    .local v2, "start":I
    :goto_0
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "length":I
    .restart local p3    # "length":I
    if-gtz v1, :cond_0

    move p2, v2

    .line 534
    .end local v2    # "start":I
    .restart local p2    # "start":I
    :goto_1
    return-void

    .line 491
    .end local p2    # "start":I
    .restart local v2    # "start":I
    :cond_0
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "start":I
    .restart local p2    # "start":I
    aget-char v0, p1, v2

    .line 492
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 494
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "length":I
    .restart local v1    # "length":I
    if-lez p3, :cond_1

    .line 495
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "start":I
    .restart local v2    # "start":I
    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_0

    .line 497
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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    .line 499
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_0

    .line 501
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_2
    if-eqz p5, :cond_3

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 502
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    move v2, p2

    .line 503
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_0

    .line 505
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    move v2, p2

    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_0

    .line 516
    .end local v0    # "ch":C
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_4
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "start":I
    .restart local p2    # "start":I
    aget-char v0, p1, v2

    .line 517
    .restart local v0    # "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 519
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "length":I
    .restart local v1    # "length":I
    if-lez p3, :cond_5

    .line 520
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "start":I
    .restart local v2    # "start":I
    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    .line 515
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

    .line 522
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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    .line 524
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_2

    .line 526
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_6
    if-eqz p5, :cond_7

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 527
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    move v2, p2

    .line 528
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_2

    .line 530
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

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

.method protected final printXMLChar(I)V
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x85

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2028

    if-ne p1, v0, :cond_1

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    .line 394
    :goto_0
    return-void

    .line 377
    :cond_1
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_2

    .line 378
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    const/16 v0, 0x26

    if-ne p1, v0, :cond_3

    .line 381
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_3
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_4

    .line 386
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    .line 392
    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->reset()Z

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method protected final surrogates(IIZ)V
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
    .line 397
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
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

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 403
    :cond_0
    int-to-char v1, p1

    int-to-char v2, p2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    .line 404
    .local v0, "supplemental":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
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

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>&#x"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0

    .line 421
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

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0
.end method
