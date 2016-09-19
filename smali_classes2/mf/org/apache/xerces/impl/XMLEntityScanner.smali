.class public Lmf/org/apache/xerces/impl/XMLEntityScanner;
.super Ljava/lang/Object;
.source "XMLEntityScanner.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# static fields
.field private static final DEBUG_BUFFER:Z

.field private static final DEBUG_ENCODINGS:Z

.field private static final END_OF_DOCUMENT_ENTITY:Ljava/io/EOFException;


# instance fields
.field protected fBufferSize:I

.field protected fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

.field private fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->END_OF_DOCUMENT_ENTITY:Ljava/io/EOFException;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 64
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 66
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 68
    const/16 v0, 0x800

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fBufferSize:I

    .line 81
    return-void
.end method


# virtual methods
.method public final getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCharacterOffset()I
    .locals 3

    .prologue
    .line 1635
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_1

    .line 1636
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1645
    :goto_0
    return v0

    .line 1641
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getCharacterOffset()I

    move-result v0

    goto :goto_0

    .line 1645
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_1

    .line 1605
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1614
    :goto_0
    return v0

    .line 1610
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getColumnNumber()I

    move-result v0

    goto :goto_0

    .line 1614
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    .line 1666
    :goto_0
    return-object v0

    .line 1663
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1666
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_1

    .line 1516
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 1525
    :goto_0
    return-object v0

    .line 1522
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1525
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLineNumber()I
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1581
    :goto_0
    return v0

    .line 1577
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getLineNumber()I

    move-result v0

    goto :goto_0

    .line 1581
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_1

    .line 1540
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    .line 1549
    :goto_0
    return-object v0

    .line 1546
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getXMLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_1

    .line 1681
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    .line 1689
    :goto_0
    return-object v0

    .line 1686
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1689
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    return v0
.end method

.method final load(IZ)Z
    .locals 7
    .param p1, "offset"    # I
    .param p2, "changeEntity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1747
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 1749
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v3, v3

    sub-int v2, v3, p1

    .line 1750
    .local v2, "length":I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-nez v3, :cond_0

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    .line 1751
    const/16 v2, 0x40

    .line 1754
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v3, v4, p1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 1758
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1759
    .local v1, "entityChanged":Z
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 1760
    if-eqz v0, :cond_1

    .line 1761
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    add-int v4, v0, p1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    .line 1762
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1763
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1790
    :cond_1
    :goto_0
    return v1

    .line 1769
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    .line 1770
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1771
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput p1, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1772
    const/4 v1, 0x1

    .line 1773
    if-eqz p2, :cond_1

    .line 1774
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->endEntity()V

    .line 1775
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v3, :cond_3

    .line 1776
    sget-object v3, Lmf/org/apache/xerces/impl/XMLEntityScanner;->END_OF_DOCUMENT_ENTITY:Ljava/io/EOFException;

    throw v3

    .line 1779
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_1

    .line 1780
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    goto :goto_0
.end method

.method public peekChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v1, v2, :cond_0

    .line 203
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 207
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v1, v2

    .line 220
    .local v0, "c":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    .line 224
    .end local v0    # "c":I
    :cond_1
    :goto_0
    return v0

    .line 221
    .restart local v0    # "c":I
    :cond_2
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public final reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "entityManager"    # Lmf/org/apache/xerces/impl/XMLEntityManager;
    .param p3, "reporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    .line 1715
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1716
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 1717
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 1718
    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1719
    return-void
.end method

.method public scanChar()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v2, v3, :cond_0

    .line 246
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 250
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v2, v4

    .line 251
    .local v0, "c":I
    const/4 v1, 0x0

    .line 252
    .local v1, "external":Z
    if-eq v0, v8, :cond_1

    .line 253
    if-ne v0, v9, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 255
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v7, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 256
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v2, v3, :cond_2

    .line 257
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v3, v0

    aput-char v3, v2, v6

    .line 258
    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 260
    :cond_2
    if-ne v0, v9, :cond_4

    if-eqz v1, :cond_4

    .line 261
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v2, v4

    if-eq v2, v8, :cond_3

    .line 262
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 264
    :cond_3
    const/16 v0, 0xa

    .line 274
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 275
    return v0
.end method

.method public scanContent(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 14
    .param p1, "content"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xd

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 676
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_2

    .line 677
    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 687
    :cond_0
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 688
    .local v5, "offset":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v5

    .line 689
    .local v0, "c":I
    const/4 v4, 0x0

    .line 690
    .local v4, "newlines":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    .line 691
    .local v1, "external":Z
    if-eq v0, v12, :cond_1

    if-ne v0, v13, :cond_b

    if-eqz v1, :cond_b

    .line 698
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    .line 699
    if-ne v0, v13, :cond_6

    if-eqz v1, :cond_6

    .line 700
    add-int/lit8 v4, v4, 0x1

    .line 701
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 702
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 703
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_3

    .line 704
    const/4 v5, 0x0

    .line 705
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 706
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 707
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 708
    invoke-virtual {p0, v4, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 740
    :goto_1
    move v2, v5

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v2, v6, :cond_8

    .line 743
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    .line 744
    .local v3, "length":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_b

    .line 745
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 751
    const/4 v6, -0x1

    .line 789
    .end local v2    # "i":I
    :goto_3
    return v6

    .line 679
    .end local v0    # "c":I
    .end local v1    # "external":Z
    .end local v3    # "length":I
    .end local v4    # "newlines":I
    .end local v5    # "offset":I
    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    .line 680
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    aget-char v7, v7, v8

    aput-char v7, v6, v10

    .line 681
    invoke-virtual {p0, v11, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 682
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 683
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_0

    .line 712
    .restart local v0    # "c":I
    .restart local v1    # "external":Z
    .restart local v4    # "newlines":I
    .restart local v5    # "offset":I
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v6, v6, v7

    if-ne v6, v12, :cond_5

    .line 713
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 714
    add-int/lit8 v5, v5, 0x1

    .line 739
    :cond_4
    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    .line 697
    if-lt v6, v7, :cond_1

    goto :goto_1

    .line 718
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 720
    goto :goto_4

    .line 721
    :cond_6
    if-ne v0, v12, :cond_7

    .line 722
    add-int/lit8 v4, v4, 0x1

    .line 723
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 724
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 725
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_4

    .line 726
    const/4 v5, 0x0

    .line 727
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 728
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 729
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 730
    invoke-virtual {p0, v4, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_1

    .line 736
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_1

    .line 741
    .restart local v2    # "i":I
    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v12, v6, v2

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 762
    .end local v2    # "i":I
    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    .line 763
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isContent(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 764
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 768
    :goto_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    .line 769
    .restart local v3    # "length":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v8, v3, v4

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 770
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 773
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_c

    .line 774
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 777
    if-ne v0, v13, :cond_a

    if-eqz v1, :cond_a

    .line 778
    const/16 v0, 0xa

    :cond_a
    :goto_6
    move v6, v0

    .line 789
    goto/16 :goto_3

    .line 761
    .end local v3    # "length":I
    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v6, v7, :cond_9

    goto :goto_5

    .line 782
    .restart local v3    # "length":I
    :cond_c
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z
    .locals 18
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "buffer"    # Lmf/org/apache/xerces/util/XMLStringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    const/4 v7, 0x0

    .line 996
    .local v7, "found":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 997
    .local v4, "delimLen":I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 998
    .local v3, "charAt0":C
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v6

    .line 1007
    .local v6, "external":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v12, v13, :cond_0

    .line 1008
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1011
    :cond_0
    const/4 v1, 0x0

    .line 1013
    .local v1, "bNextEntity":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v13, v4

    if-le v12, v13, :cond_1

    .line 1014
    if-eqz v1, :cond_2

    .line 1027
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v13, v4

    if-le v12, v13, :cond_3

    .line 1029
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v13

    .line 1030
    .local v9, "length":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1032
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 1033
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1034
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1035
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1036
    const/4 v12, 0x0

    .line 1160
    :goto_1
    return v12

    .line 1016
    .end local v9    # "length":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 1017
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1018
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 1019
    const/4 v15, 0x0

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    .line 1016
    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v1

    .line 1023
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x0

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x0

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_0

    .line 1040
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v11, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1041
    .local v11, "offset":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v2, v12, v11

    .line 1042
    .local v2, "c":I
    const/4 v10, 0x0

    .line 1043
    .local v10, "newlines":I
    const/16 v12, 0xa

    if-eq v2, v12, :cond_4

    const/16 v12, 0xd

    if-ne v2, v12, :cond_13

    if-eqz v6, :cond_13

    .line 1050
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v12, v14

    .line 1051
    const/16 v12, 0xd

    if-ne v2, v12, :cond_8

    if-eqz v6, :cond_8

    .line 1052
    add-int/lit8 v10, v10, 0x1

    .line 1053
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1054
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1055
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v12, v13, :cond_5

    .line 1056
    const/4 v11, 0x0

    .line 1057
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 1058
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1059
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1060
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1093
    :goto_2
    move v8, v11

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v8, v12, :cond_a

    .line 1096
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v11

    .line 1097
    .restart local v9    # "length":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_13

    .line 1098
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1104
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1064
    .end local v8    # "i":I
    .end local v9    # "length":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v12, v12, v13

    const/16 v13, 0xa

    if-ne v12, v13, :cond_7

    .line 1065
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1066
    add-int/lit8 v11, v11, 0x1

    .line 1092
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v13, v13, -0x1

    .line 1049
    if-lt v12, v13, :cond_4

    goto :goto_2

    .line 1070
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 1072
    goto :goto_4

    .line 1073
    :cond_8
    const/16 v12, 0xa

    if-ne v2, v12, :cond_9

    .line 1074
    add-int/lit8 v10, v10, 0x1

    .line 1075
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1076
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v13, 0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1077
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v12, v13, :cond_6

    .line 1078
    const/4 v11, 0x0

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 1080
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1081
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1082
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v10, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    .line 1083
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v12

    if-eqz v12, :cond_6

    goto/16 :goto_2

    .line 1089
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    .line 1094
    .restart local v8    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v13, 0xa

    aput-char v13, v12, v8

    .line 1093
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1115
    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v12, v14

    .line 1116
    if-ne v2, v3, :cond_10

    .line 1118
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v12, -0x1

    .line 1119
    .local v5, "delimOffset":I
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_5
    if-lt v8, v4, :cond_d

    .line 1130
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int v13, v5, v4

    if-ne v12, v13, :cond_13

    .line 1131
    const/4 v7, 0x1

    .line 1147
    .end local v5    # "delimOffset":I
    .end local v8    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v11

    .line 1148
    .restart local v9    # "length":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v14, v9, v10

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1149
    if-eqz v7, :cond_c

    .line 1150
    sub-int/2addr v9, v4

    .line 1152
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1160
    if-eqz v7, :cond_14

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1120
    .end local v9    # "length":I
    .restart local v5    # "delimOffset":I
    .restart local v8    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v12, v13, :cond_e

    .line 1121
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v13, v8

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_7

    .line 1124
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v12, v14

    .line 1125
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v2, :cond_f

    .line 1126
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_6

    .line 1119
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1135
    .end local v5    # "delimOffset":I
    .end local v8    # "i":I
    :cond_10
    const/16 v12, 0xa

    if-eq v2, v12, :cond_11

    if-eqz v6, :cond_12

    const/16 v12, 0xd

    if-ne v2, v12, :cond_12

    .line 1136
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_7

    .line 1139
    :cond_12
    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1140
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1141
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v9, v12, v11

    .line 1142
    .restart local v9    # "length":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v14, v9, v10

    add-int/2addr v13, v14

    iput v13, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1143
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1144
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1114
    .end local v9    # "length":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v12, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v12, v13, :cond_b

    goto/16 :goto_7

    .line 1160
    .restart local v9    # "length":I
    :cond_14
    const/4 v12, 0x1

    goto/16 :goto_1
.end method

.method public scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I
    .locals 10
    .param p1, "quote"    # I
    .param p2, "content"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_2

    .line 831
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 841
    :cond_0
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 842
    .local v5, "offset":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v5

    .line 843
    .local v0, "c":I
    const/4 v4, 0x0

    .line 844
    .local v4, "newlines":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    .line 845
    .local v1, "external":Z
    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    const/16 v6, 0xd

    if-ne v0, v6, :cond_d

    if-eqz v1, :cond_d

    .line 852
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    .line 853
    const/16 v6, 0xd

    if-ne v0, v6, :cond_6

    if-eqz v1, :cond_6

    .line 854
    add-int/lit8 v4, v4, 0x1

    .line 855
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 856
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 857
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_3

    .line 858
    const/4 v5, 0x0

    .line 859
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 860
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 861
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 862
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 895
    :goto_1
    move v2, v5

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v2, v6, :cond_8

    .line 898
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    .line 899
    .local v3, "length":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_d

    .line 900
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 906
    const/4 v6, -0x1

    .line 947
    .end local v2    # "i":I
    :goto_3
    return v6

    .line 833
    .end local v0    # "c":I
    .end local v1    # "external":Z
    .end local v3    # "length":I
    .end local v4    # "newlines":I
    .end local v5    # "offset":I
    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    .line 834
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v9, v9, -0x1

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 835
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 836
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x0

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 837
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x0

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_0

    .line 866
    .restart local v0    # "c":I
    .restart local v1    # "external":Z
    .restart local v4    # "newlines":I
    .restart local v5    # "offset":I
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v6, v6, v7

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5

    .line 867
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 868
    add-int/lit8 v5, v5, 0x1

    .line 894
    :cond_4
    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    .line 851
    if-lt v6, v7, :cond_1

    goto :goto_1

    .line 872
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 875
    goto :goto_4

    .line 876
    :cond_6
    const/16 v6, 0xa

    if-ne v0, v6, :cond_7

    .line 877
    add-int/lit8 v4, v4, 0x1

    .line 878
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 879
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 880
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_4

    .line 881
    const/4 v5, 0x0

    .line 882
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 883
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 884
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 885
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_1

    .line 891
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_1

    .line 896
    .restart local v2    # "i":I
    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v7, 0xa

    aput-char v7, v6, v2

    .line 895
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 917
    .end local v2    # "i":I
    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v8

    .line 918
    if-ne v0, p1, :cond_a

    .line 919
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v6, :cond_b

    if-nez v1, :cond_b

    .line 920
    :cond_a
    const/16 v6, 0x25

    if-eq v0, v6, :cond_b

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isContent(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 921
    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 925
    :goto_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v3, v6, v5

    .line 926
    .restart local v3    # "length":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v8, v3, v4

    add-int/2addr v7, v8

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 927
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v6, v5, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 930
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_e

    .line 931
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 935
    if-ne v0, p1, :cond_c

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v6, :cond_c

    .line 936
    const/4 v0, -0x1

    :cond_c
    :goto_6
    move v6, v0

    .line 947
    goto/16 :goto_3

    .line 916
    .end local v3    # "length":I
    :cond_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v6, v7, :cond_9

    goto :goto_5

    .line 940
    .restart local v3    # "length":I
    :cond_e
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public scanNCName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 452
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v5, :cond_0

    .line 453
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 457
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 458
    .local v1, "offset":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_5

    .line 460
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v5, v5, v1

    aput-char v5, v4, v6

    .line 461
    const/4 v1, 0x0

    .line 462
    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 463
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 464
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "symbol":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 474
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_5

    .line 475
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    .line 476
    .local v0, "length":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    if-ne v0, v4, :cond_4

    .line 478
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v3, v4, [C

    .line 479
    .local v3, "tmp":[C
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 487
    .end local v3    # "tmp":[C
    :goto_1
    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 494
    .end local v0    # "length":I
    :cond_3
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    .line 495
    .restart local v0    # "length":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v0

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 498
    const/4 v2, 0x0

    .line 499
    .restart local v2    # "symbol":Ljava/lang/String;
    if-lez v0, :cond_1

    .line 500
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 484
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 485
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 484
    invoke-static {v4, v1, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 473
    .end local v0    # "length":I
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2
.end method

.method public scanName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 369
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v5, :cond_0

    .line 370
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 374
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 375
    .local v1, "offset":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 376
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_5

    .line 377
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v5, v5, v1

    aput-char v5, v4, v6

    .line 378
    const/4 v1, 0x0

    .line 379
    invoke-virtual {p0, v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 380
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 381
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "symbol":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 391
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_5

    .line 392
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    .line 393
    .local v0, "length":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    if-ne v0, v4, :cond_4

    .line 395
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v3, v4, [C

    .line 396
    .local v3, "tmp":[C
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 404
    .end local v3    # "tmp":[C
    :goto_1
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 411
    .end local v0    # "length":I
    :cond_3
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    .line 412
    .restart local v0    # "length":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v0

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 415
    const/4 v2, 0x0

    .line 416
    .restart local v2    # "symbol":Ljava/lang/String;
    if-lez v0, :cond_1

    .line 417
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 401
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 402
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 401
    invoke-static {v4, v1, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 390
    .end local v0    # "length":I
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2
.end method

.method public scanNmtoken()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 302
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v5, :cond_0

    .line 303
    const/4 v4, 0x1

    invoke-virtual {p0, v6, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 307
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 308
    .local v1, "offset":I
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 328
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    .line 329
    .local v0, "length":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v0

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "symbol":Ljava/lang/String;
    if-lez v0, :cond_2

    .line 334
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    .line 341
    :cond_2
    return-object v2

    .line 309
    .end local v0    # "length":I
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v4, :cond_1

    .line 310
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, v4, v1

    .line 311
    .restart local v0    # "length":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    if-ne v0, v4, :cond_4

    .line 313
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v3, v4, [C

    .line 314
    .local v3, "tmp":[C
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v4, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 322
    .end local v3    # "tmp":[C
    :goto_1
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 319
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 320
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 319
    invoke-static {v4, v1, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public scanQName(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 18
    .param p1, "qname"    # Lmf/org/apache/xerces/xni/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v14, :cond_0

    .line 542
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 546
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 547
    .local v7, "offset":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v13, v13, v7

    invoke-static {v13}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 548
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v14, v13, :cond_1

    .line 549
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v15, v15, v7

    aput-char v15, v13, v14

    .line 550
    const/4 v7, 0x0

    .line 551
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 552
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, "name":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v6, v6, v14}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v13, 0x1

    .line 638
    .end local v6    # "name":Ljava/lang/String;
    :goto_0
    return v13

    .line 564
    :cond_1
    const/4 v2, -0x1

    .line 565
    .local v2, "index":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v13, v13, v14

    invoke-static {v13}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v13

    if-nez v13, :cond_5

    .line 596
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v13, v7

    .line 597
    .local v4, "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v14, v4

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 598
    if-lez v4, :cond_a

    .line 599
    const/4 v8, 0x0

    .line 600
    .local v8, "prefix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 601
    .local v5, "localpart":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v7, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v10

    .line 603
    .local v10, "rawname":Ljava/lang/String;
    const/4 v13, -0x1

    if-eq v2, v13, :cond_9

    .line 604
    sub-int v9, v2, v7

    .line 605
    .local v9, "prefixLength":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v7, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v8

    .line 607
    sub-int v13, v4, v9

    add-int/lit8 v3, v13, -0x1

    .line 608
    .local v3, "len":I
    add-int/lit8 v11, v2, 0x1

    .line 609
    .local v11, "startLocal":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v13, v13, v11

    invoke-static {v13}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v14, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 611
    const-string v15, "IllegalQName"

    .line 612
    const/16 v16, 0x0

    .line 613
    const/16 v17, 0x2

    .line 610
    invoke-virtual/range {v13 .. v17}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 615
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v11, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    .line 622
    .end local v3    # "len":I
    .end local v9    # "prefixLength":I
    .end local v11    # "startLocal":I
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5, v10, v13}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 566
    .end local v4    # "length":I
    .end local v5    # "localpart":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "rawname":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v13, v14

    .line 568
    .local v1, "c":C
    const/16 v13, 0x3a

    if-ne v1, v13, :cond_6

    .line 569
    const/4 v13, -0x1

    if-ne v2, v13, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 574
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v14, v13, :cond_2

    .line 575
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v13, v7

    .line 576
    .restart local v4    # "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v13, v13

    if-ne v4, v13, :cond_8

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v13, v13

    shl-int/lit8 v13, v13, 0x1

    new-array v12, v13, [C

    .line 579
    .local v12, "tmp":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 580
    const/4 v14, 0x0

    .line 579
    invoke-static {v13, v7, v12, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v12, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 587
    .end local v12    # "tmp":[C
    :goto_3
    const/4 v13, -0x1

    if-eq v2, v13, :cond_7

    .line 588
    sub-int/2addr v2, v7

    .line 590
    :cond_7
    const/4 v7, 0x0

    .line 591
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_1

    .line 584
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 585
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    .line 584
    invoke-static {v13, v7, v14, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 620
    .end local v1    # "c":C
    .restart local v5    # "localpart":Ljava/lang/String;
    .restart local v8    # "prefix":Ljava/lang/String;
    .restart local v10    # "rawname":Ljava/lang/String;
    :cond_9
    move-object v5, v10

    goto/16 :goto_2

    .line 638
    .end local v2    # "index":I
    .end local v4    # "length":I
    .end local v5    # "localpart":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "rawname":Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public final setBufferSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1709
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fBufferSize:I

    .line 1710
    return-void
.end method

.method public final setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V
    .locals 0
    .param p1, "ent"    # Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .prologue
    .line 1694
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1695
    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 5
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v2, "UTF-16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 134
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "ENCODING":Ljava/lang/String;
    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    .end local v0    # "ENCODING":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 136
    .restart local v0    # "ENCODING":Ljava/lang/String;
    :cond_2
    const-string v1, "ISO-10646-UCS-4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v2, "UTF-16BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 144
    :cond_4
    const-string v1, "ISO-10646-UCS-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v2, "UTF-16BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 148
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v2, Lmf/org/apache/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 160
    .end local v0    # "ENCODING":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->setReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setXMLVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "xmlVersion"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object p1, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public skipChar(I)Z
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1185
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_0

    .line 1186
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1190
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    .line 1191
    .local v0, "cc":I
    if-ne v0, p1, :cond_2

    .line 1192
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1193
    if-ne p1, v5, :cond_1

    .line 1194
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1195
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v1, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1233
    :goto_0
    return v1

    .line 1198
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_0

    .line 1207
    :cond_2
    if-ne p1, v5, :cond_5

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1209
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_3

    .line 1210
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v4, v0

    aput-char v4, v3, v2

    .line 1211
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1213
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1214
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_4

    .line 1215
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1217
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1218
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v1, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1233
    goto :goto_0
.end method

.method public final skipDeclSpaces()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1351
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_0

    .line 1352
    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1356
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v6

    .line 1357
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1358
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    .line 1360
    .local v2, "external":Z
    :cond_1
    const/4 v1, 0x0

    .line 1362
    .local v1, "entityChanged":Z
    if-eq v0, v8, :cond_2

    if-eqz v2, :cond_7

    if-ne v0, v9, :cond_7

    .line 1363
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1364
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v3, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1365
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1366
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v6, v0

    aput-char v6, v5, v4

    .line 1367
    invoke-virtual {p0, v3, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v1

    .line 1368
    if-nez v1, :cond_3

    .line 1371
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1372
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1375
    :cond_3
    if-ne v0, v9, :cond_4

    if-eqz v2, :cond_4

    .line 1378
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v5, v5, v7

    if-eq v5, v8, :cond_4

    .line 1379
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1395
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 1396
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1397
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_6

    .line 1398
    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1400
    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v6

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1415
    .end local v1    # "entityChanged":Z
    .end local v2    # "external":Z
    :goto_1
    return v3

    .line 1392
    .restart local v1    # "entityChanged":Z
    .restart local v2    # "external":Z
    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_0

    .end local v1    # "entityChanged":Z
    .end local v2    # "external":Z
    :cond_8
    move v3, v4

    .line 1415
    goto :goto_1
.end method

.method public skipSpaces()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1258
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_0

    .line 1259
    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1263
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v6

    .line 1264
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1265
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    .line 1267
    .local v2, "external":Z
    :cond_1
    const/4 v1, 0x0

    .line 1269
    .local v1, "entityChanged":Z
    if-eq v0, v8, :cond_2

    if-eqz v2, :cond_7

    if-ne v0, v9, :cond_7

    .line 1270
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1271
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v3, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1272
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1273
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v6, v0

    aput-char v6, v5, v4

    .line 1274
    invoke-virtual {p0, v3, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v1

    .line 1275
    if-nez v1, :cond_3

    .line 1278
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1279
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1282
    :cond_3
    if-ne v0, v9, :cond_4

    if-eqz v2, :cond_4

    .line 1285
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v5, v5, v7

    if-eq v5, v8, :cond_4

    .line 1286
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1302
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 1303
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1304
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_6

    .line 1305
    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1307
    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v6

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1322
    .end local v1    # "entityChanged":Z
    .end local v2    # "external":Z
    :goto_1
    return v3

    .line 1299
    .restart local v1    # "entityChanged":Z
    .restart local v2    # "external":Z
    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_0

    .end local v1    # "entityChanged":Z
    .end local v2    # "external":Z
    :cond_8
    move v3, v4

    .line 1322
    goto :goto_1
.end method

.method public skipString(Ljava/lang/String;)Z
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1440
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_0

    .line 1441
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    .line 1445
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1446
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1478
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v2

    iput v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move v3, v4

    .line 1479
    :goto_1
    return v3

    .line 1447
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v7

    .line 1448
    .local v0, "c":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_2

    .line 1449
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_1

    .line 1457
    :cond_2
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_3

    .line 1458
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v8, v1, 0x1

    invoke-static {v5, v6, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1461
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->load(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1462
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1463
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_1

    .line 1446
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
