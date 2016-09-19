.class final Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;
.super Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
.source "SimpleXMLSchema.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# static fields
.field private static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# instance fields
.field private final fGrammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

.field private final fGrammarDescription:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

.field private final fGrammars:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2
    .param p1, "grammar"    # Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 40
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    .line 41
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammars:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 43
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammarDescription:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .line 44
    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 0
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 55
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 0

    .prologue
    .line 72
    return-object p0
.end method

.method public isFullyComposed()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public lockPool()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 58
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammarDescription:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->fGrammars:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {v0}, [Lmf/org/apache/xerces/xni/grammars/Grammar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 51
    :goto_0
    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_0
.end method

.method public unlockPool()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
