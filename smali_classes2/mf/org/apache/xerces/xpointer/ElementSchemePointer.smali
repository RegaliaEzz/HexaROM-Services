.class final Lmf/org/apache/xerces/xpointer/ElementSchemePointer;
.super Ljava/lang/Object;
.source "ElementSchemePointer.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerPart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;,
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
    }
.end annotation


# instance fields
.field private fChildSequence:[I

.field private fCurrentChildDepth:I

.field private fCurrentChildPosition:I

.field private fCurrentChildSequence:[I

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fFoundDepth:I

.field private fIsElementFound:Z

.field private fIsFragmentResolved:Z

.field private fIsResolveElement:Z

.field fIsShortHand:Z

.field private fSchemeData:Ljava/lang/String;

.field private fSchemeName:Ljava/lang/String;

.field private fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

.field private fShortHandPointerName:Ljava/lang/String;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fWasOnlyEmptyElementFound:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 60
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 63
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 66
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 78
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 84
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 60
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 63
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 66
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 78
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 84
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 105
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 106
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 60
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 63
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 66
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 78
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 84
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 110
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 111
    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 112
    return-void
.end method


# virtual methods
.method protected checkMatch()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-nez v2, :cond_3

    .line 376
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_1

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 409
    :cond_0
    const/4 v1, 0x1

    .end local v0    # "i":I
    :cond_1
    return v1

    .line 379
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_1

    .line 392
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 394
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    add-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_1

    .line 399
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_1

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 473
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    .line 474
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    .line 475
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    .line 476
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 477
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 478
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 479
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    .line 480
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 481
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 482
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 483
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    .line 485
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->initErrorReporter()V

    .line 486
    return-void
.end method

.method protected initErrorReporter()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 461
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    .line 462
    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 464
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 465
    const-string v1, "http://www.w3.org/TR/XPTR"

    .line 466
    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    .line 464
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 467
    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 433
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 434
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->isChildFragmentResolved()Z

    move-result v0

    .line 436
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 437
    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    .line 436
    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 421
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return v0
.end method

.method protected matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 293
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 294
    .local v0, "tmpCurrentChildSequence":[I
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 295
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    .line 294
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 299
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 300
    array-length v2, v0

    .line 299
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    .end local v0    # "tmpCurrentChildSequence":[I
    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    if-eqz v1, :cond_2

    .line 306
    if-nez p2, :cond_4

    .line 307
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v3, v1, v2

    .line 308
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 311
    iput v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 314
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v1, :cond_2

    .line 315
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 317
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    .line 360
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    return v1

    .line 319
    :cond_3
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 320
    iput v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_0

    .line 324
    :cond_4
    if-ne p2, v5, :cond_9

    .line 325
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ne v1, v2, :cond_6

    .line 326
    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 334
    :cond_5
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aput v4, v1, v2

    .line 336
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 337
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    goto :goto_0

    .line 327
    :cond_6
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ge v1, v2, :cond_7

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v1, :cond_8

    .line 328
    :cond_7
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le v1, v2, :cond_5

    .line 329
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v1, :cond_5

    .line 330
    :cond_8
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_1

    .line 339
    :cond_9
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 341
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v3, v1, v2

    .line 342
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 346
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 347
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    if-nez v1, :cond_a

    .line 348
    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 352
    :goto_2
    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_0

    .line 350
    :cond_a
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_2

    .line 354
    :cond_b
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 355
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 11
    .param p1, "xpointer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->init()V

    .line 130
    new-instance v2, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)V

    .line 133
    .local v2, "tokens":Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
    new-instance v0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 147
    .local v0, "scanner":Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 148
    .local v5, "length":I
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object v3, p1

    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z
    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v7

    .line 151
    .local v7, "success":Z
    if-nez v7, :cond_0

    .line 152
    const-string v1, "InvalidElementSchemeXPointer"

    .line 153
    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 152
    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenCount()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v8, v1, [I

    .line 161
    .local v8, "tmpChildSequence":[I
    const/4 v6, 0x0

    .line 164
    .local v6, "i":I
    :goto_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->hasMore()Z
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    new-array v1, v6, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    .line 195
    new-array v1, v6, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 196
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    invoke-static {v8, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    return-void

    .line 165
    :cond_1
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v9

    .line 167
    .local v9, "token":I
    packed-switch v9, :pswitch_data_0

    .line 188
    const-string v1, "InvalidElementSchemeXPointer"

    .line 189
    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 188
    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :pswitch_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v9

    .line 173
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v2, v9}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    .line 176
    new-instance v1, Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    .line 177
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->setSchemeName(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_1
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v1

    aput v1, v8, v6

    .line 183
    add-int/lit8 v6, v6, 0x1

    .line 185
    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 450
    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 4
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 246
    const/4 v0, 0x0

    .line 251
    .local v0, "isShortHandPointerResolved":Z
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 257
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 267
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v1, v1

    if-lez v1, :cond_2

    .line 268
    invoke-virtual {p0, p1, p4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 276
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return v1

    .line 259
    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    .line 262
    :cond_1
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    .line 269
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v1, v1

    if-gtz v1, :cond_3

    .line 271
    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    .line 273
    :cond_3
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0
    .param p1, "schemeData"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "schemeName"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    .line 225
    return-void
.end method
