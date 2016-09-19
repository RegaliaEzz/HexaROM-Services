.class public Lmf/org/apache/xerces/impl/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/XPath$Axis;,
        Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;,
        Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Step;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z

.field private static final DEBUG_ANY:Z

.field private static final DEBUG_XPATH_PARSE:Z


# instance fields
.field protected final fExpression:Ljava/lang/String;

.field protected final fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

.field protected final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 1
    .param p1, "xpath"    # Ljava/lang/String;
    .param p2, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p3, "context"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 73
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    .line 77
    return-void
.end method

.method private buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 3
    .param p1, "stepsVector"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 138
    .local v0, "size":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 139
    new-array v1, v0, [Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .line 140
    .local v1, "steps":[Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-virtual {p1, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    .line 143
    new-instance v2, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-direct {v2, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;-><init>([Lmf/org/apache/xerces/impl/xpath/XPath$Step;)V

    return-object v2

    .line 138
    .end local v1    # "steps":[Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static check(Z)V
    .locals 2
    .param p0, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 128
    if-nez p0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    .line 2009
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 2022
    return-void

    .line 2010
    :cond_0
    aget-object v1, p0, v2

    .line 2011
    .local v1, "expression":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "# XPath expression: \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2013
    :try_start_0
    new-instance v3, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 2014
    .local v3, "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 2015
    .local v4, "xpath":Lmf/org/apache/xerces/impl/xpath/XPath;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "expanded xpath: \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    .end local v3    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    .end local v4    # "xpath":Lmf/org/apache/xerces/impl/xpath/XPath;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2017
    :catch_0
    move-exception v0

    .line 2018
    .local v0, "e":Lmf/org/apache/xerces/impl/xpath/XPathException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 14
    .param p1, "context"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v2, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v2, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 157
    .local v2, "xtokens":Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$1;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$1;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 181
    .local v0, "scanner":Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 183
    .local v5, "length":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 184
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    const/4 v4, 0x0

    .line 183
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z

    move-result v12

    .line 185
    .local v12, "success":Z
    if-nez v12, :cond_0

    .line 186
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v3, "c-general-xpath"

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 190
    .local v11, "stepsVector":Ljava/util/Vector;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v8, "locationPathsVector":Ljava/util/ArrayList;
    const/4 v7, 0x1

    .line 200
    .local v7, "expectingStep":Z
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    if-eqz v7, :cond_7

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 312
    invoke-direct {p0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object v1

    .line 201
    :cond_2
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v13

    .line 203
    .local v13, "token":I
    sparse-switch v13, :sswitch_data_0

    .line 306
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 205
    :sswitch_0
    if-eqz v7, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 206
    invoke-direct {p0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v7, 0x1

    .line 208
    goto :goto_0

    .line 205
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 211
    :sswitch_1
    invoke-static {v7}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 212
    new-instance v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .line 213
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    .line 214
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v3

    invoke-direct {p0, v3, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v3

    .line 212
    invoke-direct {v10, v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    .line 215
    .local v10, "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 216
    const/4 v7, 0x0

    .line 217
    goto :goto_0

    .line 220
    .end local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :sswitch_2
    invoke-static {v7}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 222
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    .line 223
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v3, "c-general-xpath"

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_4
    new-instance v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .line 226
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    .line 227
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v3

    invoke-direct {p0, v3, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v3

    .line 225
    invoke-direct {v10, v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    .line 228
    .restart local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 229
    const/4 v7, 0x0

    .line 230
    goto/16 :goto_0

    .line 235
    .end local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :sswitch_3
    invoke-static {v7}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 236
    new-instance v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .line 237
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    .line 238
    invoke-direct {p0, v13, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v3

    .line 236
    invoke-direct {v10, v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    .line 239
    .restart local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 240
    const/4 v7, 0x0

    .line 241
    goto/16 :goto_0

    .line 244
    .end local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :sswitch_4
    invoke-static {v7}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 246
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_5

    .line 247
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v3, "c-general-xpath"

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_5
    new-instance v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .line 250
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    .line 251
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v3

    invoke-direct {p0, v3, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v3

    .line 249
    invoke-direct {v10, v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    .line 252
    .restart local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 253
    const/4 v7, 0x0

    .line 254
    goto/16 :goto_0

    .line 257
    .end local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :sswitch_5
    invoke-static {v7}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 258
    const/4 v7, 0x0

    .line 265
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 267
    new-instance v6, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v1, 0x3

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    .line 268
    .local v6, "axis":Lmf/org/apache/xerces/impl/xpath/XPath$Axis;
    new-instance v9, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    const/4 v1, 0x3

    invoke-direct {v9, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    .line 269
    .local v9, "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    new-instance v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v10, v6, v9}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    .line 270
    .restart local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->peekToken()I

    move-result v1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_1

    .line 275
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    .line 278
    new-instance v6, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    .end local v6    # "axis":Lmf/org/apache/xerces/impl/xpath/XPath$Axis;
    const/4 v1, 0x4

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    .line 279
    .restart local v6    # "axis":Lmf/org/apache/xerces/impl/xpath/XPath$Axis;
    new-instance v9, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    .end local v9    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    const/4 v1, 0x3

    invoke-direct {v9, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    .line 280
    .restart local v9    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    new-instance v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .end local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-direct {v10, v6, v9}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    .line 281
    .restart local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 282
    const/4 v7, 0x1

    .line 285
    goto/16 :goto_0

    .line 291
    .end local v6    # "axis":Lmf/org/apache/xerces/impl/xpath/XPath$Axis;
    .end local v9    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    .end local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :sswitch_6
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v3, "c-general-xpath"

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :sswitch_7
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v3, "c-general-xpath"

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :sswitch_8
    if-eqz v7, :cond_6

    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    .line 301
    const/4 v7, 0x1

    .line 302
    goto/16 :goto_0

    .line 300
    :cond_6
    const/4 v1, 0x1

    goto :goto_3

    .line 310
    .end local v13    # "token":I
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x6 -> :sswitch_1
        0x8 -> :sswitch_7
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0x15 -> :sswitch_8
        0x16 -> :sswitch_6
        0x17 -> :sswitch_0
        0x23 -> :sswitch_2
        0x24 -> :sswitch_4
    .end sparse-switch
.end method

.method private parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    .locals 7
    .param p1, "typeToken"    # I
    .param p2, "xtokens"    # Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    .param p3, "context"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 325
    packed-switch p1, :pswitch_data_0

    .line 352
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v5, "c-general-xpath"

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 327
    :pswitch_0
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    .line 349
    :goto_0
    return-object v4

    .line 332
    :pswitch_1
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 334
    .local v3, "uri":Ljava/lang/String;
    if-eqz p3, :cond_0

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v4, :cond_0

    .line 335
    invoke-interface {p3, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    :cond_0
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v4, :cond_1

    if-eqz p3, :cond_1

    if-nez v3, :cond_1

    .line 338
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v5, "c-general-xpath-ns"

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 341
    :cond_1
    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    .line 342
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v4, v1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "localpart":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v4, :cond_3

    .line 346
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "rawname":Ljava/lang/String;
    :goto_1
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v5, v1, v0, v2, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0

    .end local v2    # "rawname":Ljava/lang/String;
    :cond_3
    move-object v2, v0

    .line 347
    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getLocationPath()Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object v0
.end method

.method public getLocationPaths()[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 3

    .prologue
    .line 88
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    new-array v1, v2, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    .line 89
    .local v1, "ret":[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 92
    return-object v1

    .line 90
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 108
    :cond_0
    if-lez v1, :cond_1

    .line 109
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
