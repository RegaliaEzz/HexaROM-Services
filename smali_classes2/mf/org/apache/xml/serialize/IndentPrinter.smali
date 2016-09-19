.class public Lmf/org/apache/xml/serialize/IndentPrinter;
.super Lmf/org/apache/xml/serialize/Printer;
.source "IndentPrinter.java"


# instance fields
.field private _line:Ljava/lang/StringBuffer;

.field private _nextIndent:I

.field private _spaces:I

.field private _text:Ljava/lang/StringBuffer;

.field private _thisIndent:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 86
    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    .line 87
    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 88
    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->breakLine(Z)V

    .line 234
    return-void
.end method

.method public breakLine(Z)V
    .locals 3
    .param p1, "preserveSpace"    # Z

    .prologue
    .line 240
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 241
    :goto_0
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-gtz v1, :cond_2

    .line 245
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 246
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 251
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_1
    return-void

    .line 242
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 255
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 256
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public enterDTD()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 107
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    .line 108
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    .line 109
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    .line 111
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/IndentPrinter;->breakLine()V

    .line 315
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_2
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 319
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 320
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flushLine(Z)V
    .locals 4
    .param p1, "preserveSpace"    # Z

    .prologue
    .line 272
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 275
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 277
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 278
    .local v1, "indent":I
    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 279
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 282
    :cond_0
    :goto_0
    if-gtz v1, :cond_3

    .line 287
    .end local v1    # "indent":I
    :cond_1
    iget v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 292
    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    .line 293
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 295
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    .line 303
    :cond_2
    :goto_1
    return-void

    .line 283
    .restart local v1    # "indent":I
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 296
    .end local v1    # "indent":I
    :catch_0
    move-exception v0

    .line 299
    .local v0, "except":Ljava/io/IOException;
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_2

    .line 300
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public getNextIndent()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    return v0
.end method

.method public indent()V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    .line 331
    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 126
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    .line 127
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printSpace()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 195
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 196
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 200
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-gtz v1, :cond_2

    .line 215
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 220
    :cond_1
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    .line 221
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 204
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 205
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_0

    .line 212
    .end local v0    # "except":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    goto :goto_0
.end method

.method public printText(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 156
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    return-void
.end method

.method public printText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    return-void
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/StringBuffer;

    .prologue
    .line 150
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    return-void
.end method

.method public printText([CII)V
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 163
    return-void
.end method

.method public setNextIndent(I)V
    .locals 0
    .param p1, "indent"    # I

    .prologue
    .line 357
    iput p1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    .line 358
    return-void
.end method

.method public setThisIndent(I)V
    .locals 0
    .param p1, "indent"    # I

    .prologue
    .line 363
    iput p1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 364
    return-void
.end method

.method public unindent()V
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    .line 340
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    if-gez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    .line 344
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 345
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 346
    :cond_1
    return-void
.end method
