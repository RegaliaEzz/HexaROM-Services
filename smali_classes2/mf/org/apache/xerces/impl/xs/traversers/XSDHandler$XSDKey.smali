.class Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
.super Ljava/lang/Object;
.source "XSDHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSDKey"
.end annotation


# instance fields
.field referNS:Ljava/lang/String;

.field referType:S

.field systemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;SLjava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "referType"    # S
    .param p3, "referNS"    # Ljava/lang/String;

    .prologue
    .line 4235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4236
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    .line 4237
    iput-short p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referType:S

    .line 4238
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    .line 4239
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 4248
    instance-of v2, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    if-nez v2, :cond_1

    .line 4269
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 4251
    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .line 4261
    .local v0, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 4265
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4269
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 4244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
