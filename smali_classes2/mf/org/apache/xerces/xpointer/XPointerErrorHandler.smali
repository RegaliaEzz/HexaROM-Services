.class final Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;
.super Ljava/lang/Object;
.source "XPointerErrorHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>(Ljava/io/PrintWriter;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    .line 60
    return-void
.end method

.method private printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ex"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;

    .prologue
    const/16 v4, 0x3a

    .line 93
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "systemId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 98
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 99
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 100
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .end local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 104
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 105
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 106
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 107
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 110
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 112
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ex"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v0, "Error"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    .line 77
    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ex"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "Fatal Error"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    .line 83
    throw p3
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ex"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "Warning"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    .line 70
    return-void
.end method
