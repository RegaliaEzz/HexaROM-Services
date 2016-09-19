.class public Lmf/org/apache/xml/serialize/Printer;
.super Ljava/lang/Object;
.source "Printer.java"


# static fields
.field private static final BufferSize:I = 0x1000


# instance fields
.field private final _buffer:[C

.field protected _docWriter:Ljava/io/Writer;

.field protected _dtdWriter:Ljava/io/StringWriter;

.field protected _exception:Ljava/io/IOException;

.field protected final _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field private _pos:I

.field protected _writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    .line 103
    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 108
    iput-object p1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    .line 109
    iput-object p2, p0, Lmf/org/apache/xml/serialize/Printer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    .line 110
    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 111
    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    .line 112
    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    .line 113
    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 114
    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 279
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    .line 280
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 282
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0xa

    aput-char v3, v1, v2

    .line 283
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 287
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 288
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 289
    :cond_1
    throw v0
.end method

.method public breakLine(Z)V
    .locals 0
    .param p1, "preserveSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 298
    return-void
.end method

.method public enterDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    .line 139
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    .line 140
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    .line 141
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    .line 143
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 325
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 326
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    iput v5, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 335
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 330
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 331
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 332
    :cond_0
    throw v0
.end method

.method public flushLine(Z)V
    .locals 6
    .param p1, "preserveSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 306
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    iput v5, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 314
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 310
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 311
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public getException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    return-object v0
.end method

.method public getNextIndent()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public indent()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    .line 158
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    .line 159
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printSpace()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    .line 260
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 262
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 263
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 267
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 268
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 269
    :cond_1
    throw v0
.end method

.method public printText(C)V
    .locals 3
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    .line 240
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 242
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    aput-char p1, v1, v2

    .line 243
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 247
    .local v0, "except":Ljava/io/IOException;
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 248
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 249
    :cond_1
    throw v0
.end method

.method public printText(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 170
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 185
    return-void

    .line 171
    :cond_0
    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 172
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    .line 173
    const/4 v3, 0x0

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 175
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 176
    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .line 181
    .local v0, "except":Ljava/io/IOException;
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v3, :cond_2

    .line 182
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 183
    :cond_2
    throw v0
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 193
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 208
    return-void

    .line 194
    :cond_0
    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 195
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    .line 196
    const/4 v3, 0x0

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 198
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 199
    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .line 204
    .local v0, "except":Ljava/io/IOException;
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v3, :cond_2

    .line 205
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 206
    :cond_2
    throw v0
.end method

.method public printText([CII)V
    .locals 5
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    move v1, p3

    .end local p3    # "length":I
    .local v1, "length":I
    :goto_0
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "length":I
    .restart local p3    # "length":I
    if-gtz v1, :cond_0

    .line 231
    return-void

    .line 216
    :cond_0
    :try_start_0
    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    .line 217
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    .line 218
    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 220
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    aget-char v4, p1, p2

    aput-char v4, v2, v3

    .line 221
    add-int/lit8 p2, p2, 0x1

    .line 222
    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    goto :goto_0

    .line 224
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 227
    .local v0, "except":Ljava/io/IOException;
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_2

    .line 228
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 229
    :cond_2
    throw v0
.end method

.method public setNextIndent(I)V
    .locals 0
    .param p1, "indent"    # I

    .prologue
    .line 358
    return-void
.end method

.method public setThisIndent(I)V
    .locals 0
    .param p1, "indent"    # I

    .prologue
    .line 363
    return-void
.end method

.method public unindent()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method
