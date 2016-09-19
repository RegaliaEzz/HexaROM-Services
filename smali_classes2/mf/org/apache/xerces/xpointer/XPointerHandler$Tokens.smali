.class final Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tokens"
.end annotation


# static fields
.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final XPTRTOKEN_CLOSE_PAREN:I = 0x1

.field private static final XPTRTOKEN_OPEN_PAREN:I = 0x0

.field private static final XPTRTOKEN_SCHEMEDATA:I = 0x4

.field private static final XPTRTOKEN_SCHEMENAME:I = 0x3

.field private static final XPTRTOKEN_SHORTHAND:I = 0x2


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/HashMap;

.field private fTokens:[I

.field private final fgTokenNames:[Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7
    .param p2, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 495
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "XPTRTOKEN_OPEN_PAREN"

    aput-object v1, v0, v2

    .line 473
    const-string v1, "XPTRTOKEN_CLOSE_PAREN"

    aput-object v1, v0, v3

    const-string v1, "XPTRTOKEN_SHORTHAND"

    aput-object v1, v0, v4

    .line 474
    const-string v1, "XPTRTOKEN_SCHEMENAME"

    aput-object v1, v0, v5

    const-string v1, "XPTRTOKEN_SCHEMEDATA"

    aput-object v1, v0, v6

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fgTokenNames:[Ljava/lang/String;

    .line 479
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    .line 481
    iput v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    .line 496
    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 498
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 499
    const-string v2, "XPTRTOKEN_OPEN_PAREN"

    .line 498
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 501
    const-string v2, "XPTRTOKEN_CLOSE_PAREN"

    .line 500
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 503
    const-string v2, "XPTRTOKEN_SHORTHAND"

    .line 502
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 505
    const-string v2, "XPTRTOKEN_SCHEMENAME"

    .line 504
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 507
    const-string v2, "XPTRTOKEN_SCHEMEDATA"

    .line 506
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z
    .locals 1

    .prologue
    .line 561
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->peekToken()I

    move-result v0

    return v0
.end method

.method private addToken(I)V
    .locals 5
    .param p1, "token"    # I

    .prologue
    const/4 v4, 0x0

    .line 540
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    aput p1, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    .line 548
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    .line 543
    .local v1, "oldList":[I
    iget v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    .line 544
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    aput p1, v2, v3

    goto :goto_0
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "tokenStr"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 526
    .local v0, "tokenInt":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "tokenInt":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 528
    .restart local v0    # "tokenInt":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V

    .line 531
    return-void
.end method

.method private getTokenString(I)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private hasMore()Z
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 573
    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v1, "XPointerProcessingError"

    const/4 v2, 0x0

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private nextTokenAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I

    move-result v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "tokenStrint":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 604
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v2, "XPointerProcessingError"

    const/4 v3, 0x0

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    :cond_0
    return-object v0
.end method

.method private peekToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 587
    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    .line 588
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v1, "XPointerProcessingError"

    const/4 v2, 0x0

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private rewind()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    .line 555
    return-void
.end method
