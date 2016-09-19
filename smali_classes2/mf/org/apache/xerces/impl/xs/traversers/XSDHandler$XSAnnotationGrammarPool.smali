.class Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;
.super Ljava/lang/Object;
.source "XSDHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSAnnotationGrammarPool"
.end annotation


# instance fields
.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field private fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;)V
    .locals 0

    .prologue
    .line 4124
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 0
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 4161
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 4188
    return-void
.end method

.method public lockPool()V
    .locals 0

    .prologue
    .line 4184
    return-void
.end method

.method public refreshGrammars(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 1
    .param p1, "gBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .prologue
    .line 4180
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 4181
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 4182
    return-void
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 4
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 4164
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    if-ne v2, v3, :cond_1

    .line 4165
    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .end local p1    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    .line 4166
    .local v1, "tns":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    if-eqz v2, :cond_0

    .line 4167
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 4168
    .local v0, "grammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-eqz v0, :cond_0

    .line 4176
    .end local v0    # "grammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    .end local v1    # "tns":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4172
    .restart local v1    # "tns":Ljava/lang/String;
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4173
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    goto :goto_0

    .line 4176
    .end local v1    # "tns":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 6
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 4130
    const-string v3, "http://www.w3.org/2001/XMLSchema"

    if-ne p1, v3, :cond_4

    .line 4131
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    if-nez v3, :cond_0

    .line 4132
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    if-nez v3, :cond_1

    .line 4133
    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    aput-object v4, v3, v5

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 4154
    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 4156
    :goto_1
    return-object v3

    .line 4136
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    .line 4142
    .local v2, "schemaGrammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 4148
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 4149
    .local v0, "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    array-length v3, v2

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4150
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    aput-object v4, v0, v3

    .line 4151
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_0

    .line 4143
    .end local v0    # "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_2
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4144
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 4145
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    .line 4142
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4156
    .end local v1    # "i":I
    .end local v2    # "schemaGrammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_4
    new-array v3, v5, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1
.end method

.method public unlockPool()V
    .locals 0

    .prologue
    .line 4186
    return-void
.end method
