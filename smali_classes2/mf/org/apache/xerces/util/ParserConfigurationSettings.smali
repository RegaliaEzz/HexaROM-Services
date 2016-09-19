.class public Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.super Ljava/lang/Object;
.source "ParserConfigurationSettings.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"


# instance fields
.field protected fFeatures:Ljava/util/HashMap;

.field protected fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

.field protected fProperties:Ljava/util/HashMap;

.field protected fRecognizedFeatures:Ljava/util/ArrayList;

.field protected fRecognizedProperties:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .param p1, "parent"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    .line 94
    iput-object p1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .line 96
    return-void
.end method


# virtual methods
.method public addRecognizedFeatures([Ljava/lang/String;)V
    .locals 4
    .param p1, "featureIds"    # [Ljava/lang/String;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    array-length v1, p1

    .line 113
    .local v1, "featureIdsCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 120
    return-void

    .line 112
    .end local v1    # "featureIdsCount":I
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 114
    .restart local v1    # "featureIdsCount":I
    .restart local v2    # "i":I
    :cond_1
    aget-object v0, p1, v2

    .line 115
    .local v0, "featureId":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public addRecognizedProperties([Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyIds"    # [Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    array-length v2, p1

    .line 155
    .local v2, "propertyIdsCount":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 162
    return-void

    .line 154
    .end local v0    # "i":I
    .end local v2    # "propertyIdsCount":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 156
    .restart local v0    # "i":I
    .restart local v2    # "propertyIdsCount":I
    :cond_1
    aget-object v1, p1, v0

    .line 157
    .local v1, "propertyId":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 158
    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    .line 262
    :cond_0
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x0

    .line 258
    .local v0, "type":S
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 287
    :cond_0
    return-void

    .line 282
    :cond_1
    const/4 v0, 0x0

    .line 283
    .local v0, "type":S
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 202
    .local v0, "state":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x0

    .line 206
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "propertyValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void

    .line 141
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method
