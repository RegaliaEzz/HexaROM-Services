.class final Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmallContainerKeyEnumeration"
.end annotation


# instance fields
.field enumArray:[Ljava/lang/Object;

.field next:I

.field final synthetic this$1:Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;)V
    .locals 4

    .prologue
    .line 219
    iput-object p1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->this$1:Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iget v1, p1, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    if-lt v0, v1, :cond_0

    .line 223
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 230
    iget v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    iget-object v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 231
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 234
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    aget-object v0, v1, v2

    .line 235
    .local v0, "nextVal":Ljava/lang/Object;
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 236
    iget v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    .line 238
    return-object v0
.end method
