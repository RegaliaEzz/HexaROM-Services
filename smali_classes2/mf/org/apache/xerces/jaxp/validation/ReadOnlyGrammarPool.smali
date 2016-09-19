.class final Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;
.super Ljava/lang/Object;
.source "ReadOnlyGrammarPool.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# instance fields
.field private final core:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 0
    .param p1, "pool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;->core:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 37
    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 0
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 41
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public lockPool()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 52
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;->core:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;->core:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public unlockPool()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
