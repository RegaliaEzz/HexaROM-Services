.class public Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;
.super Ljava/lang/Object;
.source "MixedContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# instance fields
.field private final fChildren:[Lmf/org/apache/xerces/xni/QName;

.field private final fChildrenType:[I

.field private final fCount:I

.field private final fOrdered:Z


# direct methods
.method public constructor <init>([Lmf/org/apache/xerces/xni/QName;[IIIZ)V
    .locals 4
    .param p1, "children"    # [Lmf/org/apache/xerces/xni/QName;
    .param p2, "type"    # [I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "ordered"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p4, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    .line 82
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 83
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    if-lt v0, v1, :cond_0

    .line 88
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fOrdered:Z

    .line 90
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    add-int v3, p3, v0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    aput-object v2, v1, v0

    .line 86
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    add-int v2, p3, v0

    aget v2, p2, v2

    aput v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 10
    .param p1, "children"    # [Lmf/org/apache/xerces/xni/QName;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x6

    .line 123
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fOrdered:Z

    if-eqz v5, :cond_8

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "inIndex":I
    const/4 v2, 0x0

    .local v2, "outIndex":I
    :goto_0
    if-lt v2, p3, :cond_2

    .line 212
    .end local v1    # "inIndex":I
    :cond_0
    const/4 v2, -0x1

    .end local v2    # "outIndex":I
    :cond_1
    :goto_1
    return v2

    .line 128
    .restart local v1    # "inIndex":I
    .restart local v2    # "outIndex":I
    :cond_2
    add-int v5, p2, v2

    aget-object v0, p1, v5

    .line 129
    .local v0, "curChild":Lmf/org/apache/xerces/xni/QName;
    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 125
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    aget v3, v5, v1

    .line 135
    .local v3, "type":I
    if-nez v3, :cond_5

    .line 136
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v1

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    add-int v6, p2, v2

    aget-object v6, p1, v6

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    .line 158
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    :cond_5
    if-ne v3, v7, :cond_6

    .line 141
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v1

    iget-object v4, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 142
    .local v4, "uri":Ljava/lang/String;
    if-eqz v4, :cond_4

    aget-object v5, p1, v2

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v4, v5, :cond_4

    goto :goto_1

    .line 146
    .end local v4    # "uri":Ljava/lang/String;
    :cond_6
    if-ne v3, v9, :cond_7

    .line 147
    aget-object v5, p1, v2

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_1

    .line 151
    :cond_7
    if-ne v3, v8, :cond_4

    .line 152
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v1

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aget-object v6, p1, v2

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_4

    goto :goto_1

    .line 164
    .end local v0    # "curChild":Lmf/org/apache/xerces/xni/QName;
    .end local v1    # "inIndex":I
    .end local v2    # "outIndex":I
    .end local v3    # "type":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "outIndex":I
    :goto_3
    if-ge v2, p3, :cond_0

    .line 167
    add-int v5, p2, v2

    aget-object v0, p1, v5

    .line 170
    .restart local v0    # "curChild":Lmf/org/apache/xerces/xni/QName;
    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v5, :cond_a

    .line 164
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 174
    :cond_a
    const/4 v1, 0x0

    .line 175
    .restart local v1    # "inIndex":I
    :goto_4
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    if-lt v1, v5, :cond_c

    .line 206
    :cond_b
    :goto_5
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    if-ne v1, v5, :cond_9

    goto :goto_1

    .line 177
    :cond_c
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    aget v3, v5, v1

    .line 178
    .restart local v3    # "type":I
    if-nez v3, :cond_e

    .line 179
    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v1

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v5, v6, :cond_b

    .line 175
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 183
    :cond_e
    if-ne v3, v7, :cond_f

    .line 184
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v1

    iget-object v4, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 185
    .restart local v4    # "uri":Ljava/lang/String;
    if-eqz v4, :cond_b

    aget-object v5, p1, v2

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v4, v5, :cond_d

    goto :goto_5

    .line 189
    .end local v4    # "uri":Ljava/lang/String;
    :cond_f
    if-ne v3, v9, :cond_10

    .line 190
    aget-object v5, p1, v2

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_d

    goto :goto_5

    .line 194
    :cond_10
    if-ne v3, v8, :cond_d

    .line 195
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v1

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aget-object v6, p1, v2

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v5, v6, :cond_d

    goto :goto_5
.end method
