.class public Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;
.super Ljava/lang/Object;
.source "SimpleContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field public static final CHOICE:S = -0x1s

.field public static final SEQUENCE:S = -0x1s


# instance fields
.field private final fFirstChild:Lmf/org/apache/xerces/xni/QName;

.field private final fOperator:I

.field private final fSecondChild:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 1
    .param p1, "operator"    # S
    .param p2, "firstChild"    # Lmf/org/apache/xerces/xni/QName;
    .param p3, "secondChild"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    .line 78
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    .line 111
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 112
    if-eqz p3, :cond_0

    .line 113
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 118
    :goto_0
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    .line 119
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 4
    .param p1, "children"    # [Lmf/org/apache/xerces/xni/QName;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 154
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    packed-switch v3, :pswitch_data_0

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImplementationMessages.VAL_CST"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :pswitch_0
    if-nez p3, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 167
    if-le p3, v1, :cond_3

    move v0, v1

    .line 168
    goto :goto_0

    .line 176
    :pswitch_1
    if-ne p3, v1, :cond_2

    .line 177
    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 186
    :cond_2
    if-le p3, v1, :cond_3

    move v0, v1

    .line 187
    goto :goto_0

    .line 197
    :pswitch_2
    if-lez p3, :cond_3

    .line 199
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-lt v0, p3, :cond_4

    .line 274
    .end local v0    # "index":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 200
    .restart local v0    # "index":I
    :cond_4
    add-int v1, p2, v0

    aget-object v1, p1, v1

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "index":I
    :pswitch_3
    if-eqz p3, :cond_0

    .line 220
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_2
    if-ge v0, p3, :cond_3

    .line 221
    add-int v1, p2, v0

    aget-object v1, p1, v1

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 232
    .end local v0    # "index":I
    :pswitch_4
    if-eqz p3, :cond_0

    .line 236
    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 237
    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 242
    :cond_5
    if-le p3, v1, :cond_3

    move v0, v1

    .line 243
    goto :goto_0

    .line 251
    :pswitch_5
    if-ne p3, v2, :cond_6

    .line 252
    aget-object v2, p1, p2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 255
    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 256
    goto :goto_0

    .line 260
    :cond_6
    if-le p3, v2, :cond_7

    move v0, v2

    .line 261
    goto :goto_0

    :cond_7
    move v0, p3

    .line 264
    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
