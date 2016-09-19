.class public Lmf/org/apache/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>(I)V

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "tableSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 75
    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    .line 81
    const/4 v1, 0x4

    new-array v1, v1, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 120
    iput p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 124
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    new-instance v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 921
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 922
    const-string p1, "NMTOKEN"

    .line 924
    .end local p1    # "type":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "name"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x14

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 177
    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v6, v10, :cond_3

    .line 178
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 182
    .local v5, "index":I
    :goto_0
    if-ne v5, v9, :cond_0

    .line 183
    iget v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 184
    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 185
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    new-array v1, v6, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 186
    .local v1, "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    .local v4, "i":I
    :goto_1
    array-length v6, v1

    if-lt v4, v6, :cond_2

    .line 190
    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 266
    .end local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4    # "i":I
    :cond_0
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v6, v5

    .line 267
    .local v0, "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 268
    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 269
    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 270
    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 271
    iput-boolean v8, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 274
    iget-object v6, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v6}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 276
    return v5

    .line 180
    .end local v0    # "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v5    # "index":I
    :cond_1
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 188
    .restart local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :cond_2
    new-instance v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 194
    .end local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_3
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 195
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 196
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "index":I
    if-ne v5, v9, :cond_0

    .line 206
    .end local v5    # "index":I
    :cond_4
    iget-boolean v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ne v6, v10, :cond_6

    .line 207
    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    .line 208
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 211
    :cond_6
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, "bucket":I
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v6, v6, v2

    iget v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v6, v7, :cond_9

    .line 216
    iget v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 217
    .restart local v5    # "index":I
    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_7

    .line 218
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 219
    .restart local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    .restart local v4    # "i":I
    :goto_3
    array-length v6, v1

    if-lt v4, v6, :cond_8

    .line 223
    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 227
    .end local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4    # "i":I
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v7, v6, v2

    .line 228
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    iput-object v7, v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 229
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v5

    aput-object v7, v6, v2

    goto/16 :goto_2

    .line 221
    .restart local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v4    # "i":I
    :cond_8
    new-instance v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 235
    .end local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v6, v2

    .line 236
    .local v3, "found":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_4
    if-nez v3, :cond_c

    .line 243
    :cond_a
    if-nez v3, :cond_e

    .line 244
    iget v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 245
    .restart local v5    # "index":I
    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_b

    .line 246
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 247
    .restart local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    .restart local v4    # "i":I
    :goto_5
    array-length v6, v1

    if-lt v4, v6, :cond_d

    .line 251
    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 255
    .end local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4    # "i":I
    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v6, v6, v5

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v2

    iput-object v7, v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 256
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v5

    aput-object v7, v6, v2

    goto/16 :goto_2

    .line 237
    .end local v5    # "index":I
    :cond_c
    iget-object v6, v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v6, v7, :cond_a

    .line 240
    iget-object v3, v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_4

    .line 249
    .restart local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :cond_d
    new-instance v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 260
    .end local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_e
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "index":I
    goto/16 :goto_2
.end method

.method public addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 790
    iget v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 791
    .local v3, "index":I
    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 793
    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    .line 794
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    new-array v1, v4, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 799
    .local v1, "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v2, v4

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_2

    .line 803
    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 807
    .end local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v4, v3

    .line 808
    .local v0, "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v4, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 809
    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 810
    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 811
    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 812
    iput-boolean v6, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 815
    iget-object v4, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 816
    return-void

    .line 797
    .end local v0    # "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .restart local v1    # "attributes":[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    goto :goto_0

    .line 801
    .restart local v2    # "i":I
    :cond_2
    new-instance v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v4, v1, v2

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 832
    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v9, 0x14

    if-gt v8, v9, :cond_4

    .line 833
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_1

    .line 885
    :cond_0
    :goto_1
    return-object v7

    .line 834
    :cond_1
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v8, v5

    .line 835
    .local v0, "att1":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    add-int/lit8 v6, v5, 0x1

    .local v6, "j":I
    :goto_2
    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v6, v8, :cond_2

    .line 833
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 836
    :cond_2
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v8, v6

    .line 837
    .local v1, "att2":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v8, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v8, v9, :cond_3

    .line 838
    iget-object v8, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_3

    .line 839
    iget-object v7, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    goto :goto_1

    .line 835
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 848
    .end local v0    # "att1":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1    # "att2":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 850
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    .line 855
    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v5, v8, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_0

    .line 856
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v8, v5

    .line 857
    .local v2, "attr":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v8, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 861
    .local v3, "bucket":I
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v8, v8, v3

    iget v9, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v8, v9, :cond_5

    .line 862
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v9, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v9, v8, v3

    .line 863
    iput-object v7, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 864
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v8, v3

    .line 855
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 870
    :cond_5
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v8, v3

    .line 871
    .local v4, "found":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_5
    if-nez v4, :cond_6

    .line 880
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v8, v8, v3

    iput-object v8, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 881
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v8, v3

    goto :goto_4

    .line 872
    :cond_6
    iget-object v8, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v8, v9, :cond_7

    .line 873
    iget-object v8, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_7

    .line 874
    iget-object v7, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    goto/16 :goto_1

    .line 876
    :cond_7
    iget-object v4, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_5
.end method

.method protected cleanTableView()V
    .locals 3

    .prologue
    .line 962
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v1, :cond_1

    .line 964
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v1, :cond_0

    .line 965
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 969
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    .line 971
    :cond_1
    return-void

    .line 966
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 965
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1
    .param p1, "attributeIndex"    # I

    .prologue
    .line 712
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 713
    :cond_0
    const/4 v0, 0x0

    .line 715
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 702
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 687
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 688
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    .line 550
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 544
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 545
    .local v0, "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    .line 573
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 564
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 565
    .local v0, "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 566
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq p1, v2, :cond_0

    .line 568
    if-eqz p1, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 3
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 753
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    .line 759
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 754
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 755
    .local v0, "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, p1, :cond_0

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 903
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    .line 910
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 904
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 905
    .local v0, "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, p2, :cond_2

    .line 906
    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v2, p1, :cond_0

    .line 903
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 586
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v0, :cond_0

    .line 587
    const-string v0, ""

    .line 592
    :goto_0
    return-object v0

    .line 589
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_2

    .line 590
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 525
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 526
    :cond_0
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "attrName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 327
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 328
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "attrIndex"    # I

    .prologue
    .line 384
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v0, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 385
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 639
    if-ltz p1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_2

    .line 640
    :cond_0
    const/4 v0, 0x0

    .line 644
    :cond_1
    :goto_0
    return-object v0

    .line 642
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 644
    .local v0, "prefix":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 605
    if-ltz p1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_2

    .line 606
    :cond_0
    const/4 v0, 0x0

    .line 609
    :cond_1
    :goto_0
    return-object v0

    .line 608
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 609
    .local v0, "rawname":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method protected getTableViewBucket(Ljava/lang/String;)I
    .locals 2
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    .line 936
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    return v0
.end method

.method protected getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "localpart"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const v2, 0x7fffffff

    .line 949
    if-nez p2, :cond_0

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    and-int/2addr v0, v2

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    .line 953
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/2addr v0, v2

    .line 954
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    .line 953
    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 446
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 447
    :cond_0
    const/4 v0, 0x0

    .line 449
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 626
    iget-boolean v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-object v1

    .line 629
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 630
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 655
    if-ltz p1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_1

    .line 656
    :cond_0
    const/4 v0, 0x0

    .line 659
    :goto_0
    return-object v0

    .line 658
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 659
    .local v0, "uri":Ljava/lang/String;
    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 482
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 483
    :cond_0
    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 501
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 674
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 675
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 1
    .param p1, "attrIndex"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return v0
.end method

.method protected prepareAndPopulateTableView()V
    .locals 5

    .prologue
    .line 992
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    .line 996
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_0

    .line 1010
    return-void

    .line 997
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v3, v2

    .line 998
    .local v0, "attr":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v1

    .line 999
    .local v1, "bucket":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v3, v3, v1

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v3, v4, :cond_1

    .line 1000
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v3, v1

    .line 1001
    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 1002
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v0, v3, v1

    .line 996
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v1

    iput-object v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 1007
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v0, v3, v1

    goto :goto_1
.end method

.method protected prepareTableView()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    if-nez v0, :cond_0

    .line 978
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 979
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    .line 984
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->cleanTableView()V

    goto :goto_0
.end method

.method public removeAllAttributes()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 286
    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 5
    .param p1, "attrIndex"    # I

    .prologue
    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 298
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 299
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, p1

    .line 300
    .local v0, "removedAttr":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    add-int/lit8 v2, p1, 0x1

    .line 301
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 300
    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 306
    .end local v0    # "removedAttr":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 307
    return-void
.end method

.method public setAugmentations(ILmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 725
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    .line 726
    return-void
.end method

.method public setName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "attrName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 316
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 317
    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0
    .param p1, "namespaces"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 140
    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 370
    if-nez p2, :cond_0

    .line 371
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 373
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "specified"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 398
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "attrType"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 735
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iput-object p2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2
    .param p1, "attrIndex"    # I
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, p1

    .line 358
    .local v0, "attribute":Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 359
    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 360
    return-void
.end method
