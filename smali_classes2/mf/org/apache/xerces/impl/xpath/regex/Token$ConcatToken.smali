.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcatToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78fa25a6724b344dL


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 1
    .param p1, "t1"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .param p2, "t2"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    .line 1113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 1114
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1115
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1116
    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1122
    if-nez p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 1119
    const/4 v0, 0x2

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "options"    # I

    .prologue
    const/4 v3, 0x0

    .line 1127
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne v1, v2, :cond_0

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1129
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne v1, v2, :cond_1

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1132
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method
