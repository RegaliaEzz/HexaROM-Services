.class final Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
.super Ljava/lang/Object;
.source "StAXValidatorHelper.java"

# interfaces
.implements Lmf/javax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XMLStreamReaderLocation"
.end annotation


# instance fields
.field private reader:Lmf/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocation()Lmf/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Lmf/javax/xml/stream/XMLStreamReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 2

    .prologue
    .line 650
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    .line 651
    .local v0, "loc":Lmf/javax/xml/stream/Location;
    if-eqz v0, :cond_0

    .line 652
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v1

    .line 654
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 658
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    .line 659
    .local v0, "loc":Lmf/javax/xml/stream/Location;
    if-eqz v0, :cond_0

    .line 660
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    .line 662
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 666
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    .line 667
    .local v0, "loc":Lmf/javax/xml/stream/Location;
    if-eqz v0, :cond_0

    .line 668
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v1

    .line 670
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    .line 675
    .local v0, "loc":Lmf/javax/xml/stream/Location;
    if-eqz v0, :cond_0

    .line 676
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .line 678
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 682
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    .line 683
    .local v0, "loc":Lmf/javax/xml/stream/Location;
    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 686
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setXMLStreamReader(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 0
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;

    .prologue
    .line 690
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 691
    return-void
.end method
