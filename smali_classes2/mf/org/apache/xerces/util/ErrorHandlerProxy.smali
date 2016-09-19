.class public abstract Lmf/org/apache/xerces/util/ErrorHandlerProxy;
.super Ljava/lang/Object;
.source "ErrorHandlerProxy.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .line 48
    .local v0, "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .end local v0    # "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    iget-object v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 56
    :goto_0
    return-void

    .line 52
    .restart local v0    # "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    const-string v1, ""

    const-string v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .line 60
    .local v0, "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .end local v0    # "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    iget-object v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 66
    :goto_0
    return-void

    .line 64
    .restart local v0    # "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    const-string v1, ""

    const-string v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0
.end method

.method protected abstract getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .line 70
    .local v0, "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .end local v0    # "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    iget-object v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 76
    :goto_0
    return-void

    .line 74
    .restart local v0    # "eh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    const-string v1, ""

    const-string v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0
.end method
