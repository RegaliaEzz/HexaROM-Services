.class public Lmf/org/apache/xml/resolver/helpers/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3
    .param p0, "element"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/16 v2, 0x3a

    .line 65
    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 111
    invoke-static {p0}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getPrefix(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {p0, v0}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 99
    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    :goto_0
    return-object v1

    .line 88
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    .line 89
    check-cast v1, Lmf/org/w3c/dom/Element;

    const-string v2, "xmlns"

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    check-cast p0, Lmf/org/w3c/dom/Element;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    const-string v1, "xmlns"

    invoke-interface {p0, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "nsattr":Ljava/lang/String;
    move-object v1, p0

    .line 94
    check-cast v1, Lmf/org/w3c/dom/Element;

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    check-cast p0, Lmf/org/w3c/dom/Element;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-interface {p0, v0}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    .end local v0    # "nsattr":Ljava/lang/String;
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_3
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1, p1}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPrefix(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 4
    .param p0, "element"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/16 v3, 0x3a

    .line 47
    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    .line 50
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    return-object v1
.end method
