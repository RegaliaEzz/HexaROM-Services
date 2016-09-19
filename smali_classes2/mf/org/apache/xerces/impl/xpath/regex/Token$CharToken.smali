.class Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;
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
    name = "CharToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3cfb97d8347ea91dL


# instance fields
.field final chardata:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ch"    # I

    .prologue
    .line 1147
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 1148
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    .line 1149
    return-void
.end method


# virtual methods
.method getChar()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    return v0
.end method

.method match(I)Z
    .locals 3
    .param p1, "ch"    # I

    .prologue
    .line 1194
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->type:I

    if-nez v0, :cond_1

    .line 1195
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1197
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NFAArrow#match(): Internal error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5
    .param p1, "options"    # I

    .prologue
    .line 1157
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 1188
    const/4 v1, 0x0

    .line 1190
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1159
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    sparse-switch v2, :sswitch_data_1

    .line 1172
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_0

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "pre":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1175
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1163
    .end local v0    # "pre":Ljava/lang/String;
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1165
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_2
    const-string v1, "\\f"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1166
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_3
    const-string v1, "\\n"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1167
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_4
    const-string v1, "\\r"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1168
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_5
    const-string v1, "\\t"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1169
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_6
    const-string v1, "\\e"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1176
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1181
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_7
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v2, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v2, :cond_2

    .line 1182
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1184
    .end local v1    # "ret":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1157
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_7
    .end sparse-switch

    .line 1159
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x1b -> :sswitch_6
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x2e -> :sswitch_1
        0x3f -> :sswitch_1
        0x5b -> :sswitch_1
        0x5c -> :sswitch_1
        0x7b -> :sswitch_1
        0x7c -> :sswitch_1
    .end sparse-switch
.end method
