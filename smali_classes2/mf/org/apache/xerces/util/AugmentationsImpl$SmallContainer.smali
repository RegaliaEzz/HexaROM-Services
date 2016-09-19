.class final Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;
.super Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmallContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    }
.end annotation


# static fields
.field static final SIZE_LIMIT:I = 0xa


# instance fields
.field final fAugmentations:[Ljava/lang/Object;

.field fNumEntries:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;-><init>()V

    .line 116
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 113
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 178
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 179
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 175
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object v3, v1, v2

    .line 173
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public expand()Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    .locals 5

    .prologue
    .line 186
    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;-><init>()V

    .line 188
    .local v0, "expandedContainer":Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 193
    return-object v0

    .line 189
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 190
    iget-object v3, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    .line 189
    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 130
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 125
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_1

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;-><init>(Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;)V

    return-object v0
.end method

.method public putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_0

    .line 143
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v3, v3, 0x2

    aput-object p1, v2, v3

    .line 144
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aput-object p2, v2, v3

    .line 145
    iget v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 147
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 135
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 137
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aput-object p2, v2, v3

    goto :goto_1

    .line 134
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public removeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_0

    move-object v2, v3

    .line 169
    :goto_1
    return-object v2

    .line 153
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    iget-object v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v4, v5

    .line 156
    .local v2, "oldValue":Ljava/lang/Object;
    move v1, v0

    .local v1, "j":I
    :goto_2
    iget v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x2

    if-lt v1, v4, :cond_1

    .line 161
    iget-object v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v5, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    aput-object v3, v4, v5

    .line 162
    iget-object v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v5, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    aput-object v3, v4, v5

    .line 163
    iget v3, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    goto :goto_1

    .line 157
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x2

    aget-object v5, v5, v6

    aput-object v5, v4, v1

    .line 158
    iget-object v4, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x3

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 156
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 152
    .end local v1    # "j":I
    .end local v2    # "oldValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v0, "buff":Ljava/lang/StringBuffer;
    const-string v2, "SmallContainer - fNumEntries == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 201
    :cond_0
    const-string v2, "\nfAugmentations["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 203
    const-string v2, "] == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 205
    const-string v2, "; fAugmentations["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 207
    const-string v2, "] == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 200
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method
