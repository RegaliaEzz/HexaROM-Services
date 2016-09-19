.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;
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
    name = "ParenToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x526810ed3e634cf8L


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final parennumber:I


# direct methods
.method constructor <init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .param p3, "paren"    # I

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 1282
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1283
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    .line 1284
    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1290
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method getParenNumber()I
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 1287
    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "options"    # I

    .prologue
    .line 1298
    const/4 v0, 0x0

    .line 1299
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 1324
    :goto_0
    return-object v0

    .line 1301
    :sswitch_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    if-nez v1, :cond_0

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1303
    goto :goto_0

    .line 1304
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    goto :goto_0

    .line 1309
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    goto :goto_0

    .line 1312
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    goto :goto_0

    .line 1315
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?<="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1316
    goto/16 :goto_0

    .line 1318
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?<!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1319
    goto/16 :goto_0

    .line 1321
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1299
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
    .end sparse-switch
.end method
