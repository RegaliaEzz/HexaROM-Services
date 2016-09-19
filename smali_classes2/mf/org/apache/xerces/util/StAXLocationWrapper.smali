.class public final Lmf/org/apache/xerces/util/StAXLocationWrapper;
.super Ljava/lang/Object;
.source "StAXLocationWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocation:Lmf/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    .line 36
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Lmf/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLocation(Lmf/javax/xml/stream/Location;)V
    .locals 0
    .param p1, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 39
    iput-object p1, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    .line 40
    return-void
.end method
