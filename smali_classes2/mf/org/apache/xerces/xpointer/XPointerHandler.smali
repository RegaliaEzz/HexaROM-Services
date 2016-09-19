.class public final Lmf/org/apache/xerces/xpointer/XPointerHandler;
.super Lmf/org/apache/xerces/xinclude/XIncludeHandler;
.source "XPointerHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;,
        Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
    }
.end annotation


# instance fields
.field private final ELEMENT_SCHEME_NAME:Ljava/lang/String;

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fFixupBase:Z

.field protected fFixupLang:Z

.field protected fFoundMatchingPtrPart:Z

.field protected fIsXPointerResolved:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

.field protected fXPointerParts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    .line 69
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    .line 72
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    .line 75
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    .line 84
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 87
    const-string v0, "element"

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    .line 93
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    .line 94
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 108
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .param p3, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    .line 69
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    .line 72
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    .line 75
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    .line 84
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 87
    const-string v0, "element"

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    .line 93
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    .line 94
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    .line 115
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 116
    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 117
    iput-object p3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 119
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 387
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 388
    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 399
    const-string v1, "http://www.w3.org/TR/XPTR"

    .line 400
    const/4 v2, 0x0

    .line 398
    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 401
    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1103
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1106
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 999
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1074
    .line 1075
    const/4 v0, 0x2

    .line 1074
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    .line 1075
    if-nez v0, :cond_2

    .line 1077
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 1080
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz v0, :cond_1

    .line 1081
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 1086
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    .line 1090
    :goto_0
    return-void

    .line 1089
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1175
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1178
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1142
    const/4 v0, 0x0

    .line 1143
    const/4 v1, 0x1

    .line 1142
    invoke-virtual {p0, p1, v0, p2, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    .line 1143
    if-nez v0, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1148
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public getPointerParts()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getXPointerPart()Lmf/org/apache/xerces/xpointer/XPointerPart;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1125
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    .line 429
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    .line 430
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    .line 434
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->initErrorReporter()V

    .line 435
    return-void
.end method

.method protected initErrorReporter()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 411
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 418
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 419
    const-string v1, "http://www.w3.org/TR/XPTR"

    .line 420
    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    .line 418
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 421
    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    .line 354
    invoke-interface {v1}, Lmf/org/apache/xerces/xpointer/XPointerPart;->isChildFragmentResolved()Z

    move-result v0

    .line 355
    .local v0, "resolved":Z
    :goto_0
    return v0

    .line 354
    .end local v0    # "resolved":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v1}, Lmf/org/apache/xerces/xpointer/XPointerPart;->isFragmentResolved()Z

    move-result v0

    .line 338
    .local v0, "resolved":Z
    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v1, :cond_0

    .line 339
    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    .line 342
    :cond_0
    return v0

    .line 336
    .end local v0    # "resolved":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXPointerResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 364
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    return v0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 22
    .param p1, "xpointer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->init()V

    .line 140
    new-instance v3, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)V

    .line 143
    .local v3, "tokens":Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
    new-instance v1, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 160
    .local v1, "scanner":Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 161
    .local v6, "length":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v5, 0x0

    move-object/from16 v4, p1

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    invoke-static/range {v1 .. v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v19

    .line 164
    .local v19, "success":Z
    if-nez v19, :cond_0

    .line 165
    const-string v2, "InvalidXPointerExpression"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_0
    :goto_0
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    return-void

    .line 168
    :cond_1
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 170
    .local v20, "token":I
    packed-switch v20, :pswitch_data_0

    .line 280
    const-string v2, "InvalidXPointerExpression"

    .line 281
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 280
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :pswitch_0
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 175
    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v18

    .line 177
    .local v18, "shortHandPointerName":Ljava/lang/String;
    if-nez v18, :cond_2

    .line 178
    const-string v2, "InvalidXPointerExpression"

    .line 179
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_2
    new-instance v17, Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 182
    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 184
    .local v17, "shortHandPointer":Lmf/org/apache/xerces/xpointer/XPointerPart;
    invoke-interface/range {v17 .. v18}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v17    # "shortHandPointer":Lmf/org/apache/xerces/xpointer/XPointerPart;
    .end local v18    # "shortHandPointerName":Ljava/lang/String;
    :pswitch_1
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 192
    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v14

    .line 193
    .local v14, "prefix":Ljava/lang/String;
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 194
    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v11

    .line 196
    .local v11, "localName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 199
    .local v16, "schemeName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 200
    .local v13, "openParenCount":I
    const/4 v8, 0x0

    .line 202
    .local v8, "closeParenCount":I
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 203
    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, "openParen":Ljava/lang/String;
    const-string v2, "XPTRTOKEN_OPEN_PAREN"

    if-eq v12, v2, :cond_3

    .line 207
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    .line 208
    const-string v2, "MultipleShortHandPointers"

    .line 209
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 218
    const/4 v15, 0x0

    .line 219
    .local v15, "schemeData":Ljava/lang/String;
    :goto_2
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 227
    :cond_4
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 228
    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v15

    .line 231
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 232
    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "closeParen":Ljava/lang/String;
    const-string v2, "XPTRTOKEN_CLOSE_PAREN"

    if-eq v7, v2, :cond_5

    .line 234
    const-string v2, "SchemeDataNotFollowedByCloseParenthesis"

    .line 235
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 234
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 239
    :goto_3
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 247
    :cond_6
    if-eq v13, v8, :cond_7

    .line 248
    const-string v2, "UnbalancedParenthesisInXPointerExpression"

    .line 249
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 250
    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v4, v5

    const/4 v5, 0x2

    .line 251
    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v4, v5

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_7
    const-string v2, "element"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 256
    new-instance v10, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 256
    invoke-direct {v10, v2, v4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 258
    .local v10, "elementSchemePointer":Lmf/org/apache/xerces/xpointer/XPointerPart;
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    .line 259
    invoke-interface {v10, v15}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeData(Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-interface {v10, v15}, Lmf/org/apache/xerces/xpointer/XPointerPart;->parseXPointer(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v9

    .line 268
    .local v9, "e":Lmf/org/apache/xerces/xni/XNIException;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v9}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 211
    .end local v7    # "closeParen":Ljava/lang/String;
    .end local v9    # "e":Lmf/org/apache/xerces/xni/XNIException;
    .end local v10    # "elementSchemePointer":Lmf/org/apache/xerces/xpointer/XPointerPart;
    .end local v15    # "schemeData":Ljava/lang/String;
    :cond_8
    const-string v2, "InvalidXPointerExpression"

    .line 212
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 220
    .restart local v15    # "schemeData":Ljava/lang/String;
    :cond_9
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    .line 221
    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v15

    .line 222
    const-string v2, "XPTRTOKEN_OPEN_PAREN"

    if-ne v15, v2, :cond_4

    .line 225
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 240
    .restart local v7    # "closeParen":Ljava/lang/String;
    :cond_a
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->peekToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v2

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "XPTRTOKEN_OPEN_PAREN"

    if-ne v2, v4, :cond_6

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 273
    :cond_b
    const-string v2, "SchemeUnsupported"

    .line 274
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    .line 273
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 3
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p4, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 302
    .local v1, "resolved":Z
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    if-nez v2, :cond_4

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 322
    .end local v0    # "i":I
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v2, :cond_1

    .line 323
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    .line 326
    :cond_1
    return v1

    .line 308
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerPart;

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    .line 310
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v2, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v2

    .line 311
    if-eqz v2, :cond_3

    .line 312
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    .line 313
    const/4 v1, 0x1

    .line 306
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v2, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 122
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 123
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1205
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    if-ne p1, v0, :cond_0

    .line 1207
    if-eqz p2, :cond_5

    move-object v0, p2

    .line 1208
    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1215
    :cond_0
    :goto_0
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    if-ne p1, v0, :cond_1

    .line 1217
    if-eqz p2, :cond_6

    move-object v0, p2

    .line 1218
    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 1225
    :cond_1
    :goto_1
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-language"

    if-ne p1, v0, :cond_2

    .line 1227
    if-eqz p2, :cond_7

    move-object v0, p2

    .line 1228
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    .line 1235
    :cond_2
    :goto_2
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    if-ne p1, v0, :cond_3

    .line 1237
    if-eqz p2, :cond_8

    move-object v0, p2

    .line 1238
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    .line 1245
    :cond_3
    :goto_3
    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    if-ne p1, v0, :cond_4

    move-object v0, p2

    .line 1247
    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    .line 1250
    :cond_4
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1251
    return-void

    .line 1210
    :cond_5
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    .line 1220
    :cond_6
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    goto :goto_1

    .line 1230
    :cond_7
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    goto :goto_2

    .line 1240
    :cond_8
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    goto :goto_3
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1160
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    :goto_0
    return-void

    .line 1163
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1043
    .line 1044
    const/4 v0, 0x0

    .line 1043
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    .line 1044
    if-nez v0, :cond_2

    .line 1047
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 1050
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz v0, :cond_1

    .line 1051
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 1055
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    .line 1060
    :goto_0
    return-void

    .line 1059
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method
