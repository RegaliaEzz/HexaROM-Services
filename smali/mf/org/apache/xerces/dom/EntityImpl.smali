.class public Lmf/org/apache/xerces/dom/EntityImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "EntityImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Entity;


# static fields
.field static final serialVersionUID:J = -0x319fa7a203b69e3fL


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected encoding:Ljava/lang/String;

.field protected inputEncoding:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected notationName:Ljava/lang/String;

.field protected publicId:Ljava/lang/String;

.field protected systemId:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 107
    iput-object p2, p0, Lmf/org/apache/xerces/dom/EntityImpl;->name:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->isReadOnly(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 136
    .local v0, "newentity":Lmf/org/apache/xerces/dom/EntityImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    .line 137
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 327
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->baseURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->baseURI:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 259
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 130
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x6

    return v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 213
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->notationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 153
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 166
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 194
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 179
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 335
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->baseURI:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputEncoding"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 269
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->inputEncoding:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setNotationName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 308
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->notationName:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 229
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->publicId:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 294
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->systemId:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 244
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->encoding:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    .line 282
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->version:Ljava/lang/String;

    .line 283
    return-void
.end method
