.class public final Lmf/org/apache/xerces/util/XMLLocatorWrapper;
.super Ljava/lang/Object;
.source "XMLLocatorWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 33
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocator()Lmf/org/apache/xerces/xni/XMLLocator;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 0
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;

    .prologue
    .line 36
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 37
    return-void
.end method
