.class public Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;
.super Ljava/lang/Object;
.source "DOMErrorHandlerWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
.implements Lmf/org/w3c/dom/DOMErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;
    }
.end annotation


# instance fields
.field eStatus:Z

.field public fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected final fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected final fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    .line 70
    new-instance v0, Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-direct {v0, v1, v1}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    .line 72
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    .line 83
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    .line 84
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DOMErrorHandler;)V
    .locals 2
    .param p1, "domErrorHandler"    # Lmf/org/w3c/dom/DOMErrorHandler;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    .line 70
    new-instance v0, Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-direct {v0, v1, v1}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    .line 72
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    .line 88
    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    .line 89
    return-void
.end method

.method private printError(Lmf/org/w3c/dom/DOMError;)V
    .locals 7
    .param p1, "error"    # Lmf/org/w3c/dom/DOMError;

    .prologue
    .line 237
    invoke-interface {p1}, Lmf/org/w3c/dom/DOMError;->getSeverity()S

    move-result v3

    .line 238
    .local v3, "severity":I
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 240
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, "Warning"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    invoke-interface {p1}, Lmf/org/w3c/dom/DOMError;->getLocation()Lmf/org/w3c/dom/DOMLocator;

    move-result-object v1

    .line 249
    .local v1, "locator":Lmf/org/w3c/dom/DOMLocator;
    if-eqz v1, :cond_2

    .line 250
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v1}, Lmf/org/w3c/dom/DOMLocator;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 251
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v1}, Lmf/org/w3c/dom/DOMLocator;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 253
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v1}, Lmf/org/w3c/dom/DOMLocator;->getByteOffset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 255
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v1}, Lmf/org/w3c/dom/DOMLocator;->getUtf16Offset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 257
    invoke-interface {v1}, Lmf/org/w3c/dom/DOMLocator;->getRelatedNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 258
    .local v2, "node":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_0

    .line 259
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/DOMLocator;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "systemId":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 265
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 266
    .local v0, "index":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 267
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 268
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .end local v0    # "index":I
    .end local v2    # "node":Lmf/org/w3c/dom/Node;
    .end local v4    # "systemId":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lmf/org/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 277
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 279
    return-void

    .line 241
    .end local v1    # "locator":Lmf/org/w3c/dom/DOMLocator;
    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 242
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, "Error"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v6, "FatalError"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    const/4 v2, 0x2

    iput-short v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 166
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 168
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v0, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 171
    .local v0, "locator":Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 173
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 174
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 175
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 178
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 181
    :cond_1
    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 5
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    const/4 v3, 0x3

    iput-short v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 210
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 211
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/util/XMLErrorCode;->setValues(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lmf/org/apache/xerces/util/XMLErrorCode;

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->getDOMErrorType(Lmf/org/apache/xerces/util/XMLErrorCode;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "domErrorType":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    if-eqz v0, :cond_2

    .end local v0    # "domErrorType":Ljava/lang/String;
    :goto_0
    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v1, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 216
    .local v1, "locator":Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    iput v2, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 218
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v2

    iput v2, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 219
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v2

    iput v2, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 220
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 223
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 226
    :cond_1
    return-void

    .end local v1    # "locator":Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    .restart local v0    # "domErrorType":Ljava/lang/String;
    :cond_2
    move-object v0, p2

    .line 213
    goto :goto_0
.end method

.method public getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    return-object v0
.end method

.method public handleError(Lmf/org/w3c/dom/DOMError;)Z
    .locals 1
    .param p1, "error"    # Lmf/org/w3c/dom/DOMError;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->printError(Lmf/org/w3c/dom/DOMError;)V

    .line 231
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    return v0
.end method

.method public setErrorHandler(Lmf/org/w3c/dom/DOMErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lmf/org/w3c/dom/DOMErrorHandler;

    .prologue
    .line 98
    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    .line 99
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    const/4 v2, 0x1

    iput-short v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 130
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 132
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v0, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 135
    .local v0, "locator":Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 137
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 138
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v1

    iput v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 139
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 142
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 145
    :cond_1
    return-void
.end method
