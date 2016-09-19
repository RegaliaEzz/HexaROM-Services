.class Lmf/org/apache/xerces/xpointer/XPointerHandler$1;
.super Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;->parseXPointer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p2, "$anonymous0"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 1
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;)V

    return-void
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 5
    .param p1, "tokens"    # Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 146
    if-eqz p2, :cond_0

    .line 147
    if-eq p2, v2, :cond_0

    .line 148
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 149
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 150
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v1, "InvalidXPointerToken"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 155
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 154
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
