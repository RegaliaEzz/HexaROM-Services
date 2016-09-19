.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;
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
    name = "ClosureToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x122a670924c7e68cL


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field max:I

.field min:I


# direct methods
.method constructor <init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    const/4 v0, -0x1

    .line 1213
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 1214
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1215
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->setMin(I)V

    .line 1216
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->setMax(I)V

    .line 1217
    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method final getMax()I
    .locals 1

    .prologue
    .line 1236
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->max:I

    return v0
.end method

.method final getMin()I
    .locals 1

    .prologue
    .line 1233
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->min:I

    return v0
.end method

.method final setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 1230
    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->max:I

    .line 1231
    return-void
.end method

.method final setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 1227
    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->min:I

    .line 1228
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "options"    # I

    .prologue
    .line 1241
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1242
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-gez v1, :cond_0

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1244
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-ltz v1, :cond_2

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1248
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ret":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-gez v1, :cond_3

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1251
    .end local v0    # "ret":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token#toString(): CLOSURE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1251
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1254
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    if-gez v1, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-gez v1, :cond_5

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1256
    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .end local v0    # "ret":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .end local v0    # "ret":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-ltz v1, :cond_7

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .end local v0    # "ret":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    if-ltz v1, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-gez v1, :cond_8

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",}?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1263
    .end local v0    # "ret":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token#toString(): NONGREEDYCLOSURE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
