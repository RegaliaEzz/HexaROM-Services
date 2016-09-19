.class public Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ElementStack"
.end annotation


# instance fields
.field protected fElements:[Lmf/org/apache/xerces/xni/QName;

.field protected fSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1480
    const/16 v1, 0xa

    new-array v1, v1, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    .line 1481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1484
    return-void

    .line 1482
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    .line 1481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1530
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    .line 1531
    return-void
.end method

.method public popElement(Lmf/org/apache/xerces/xni/QName;)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1525
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1526
    return-void
.end method

.method public pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;
    .locals 5
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    const/4 v4, 0x0

    .line 1504
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 1505
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lmf/org/apache/xerces/xni/QName;

    .line 1506
    .local v0, "array":[Lmf/org/apache/xerces/xni/QName;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1507
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    .line 1508
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1512
    .end local v0    # "array":[Lmf/org/apache/xerces/xni/QName;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1513
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    aget-object v2, v2, v3

    return-object v2

    .line 1509
    .restart local v0    # "array":[Lmf/org/apache/xerces/xni/QName;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    new-instance v3, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v3}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    .line 1508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
