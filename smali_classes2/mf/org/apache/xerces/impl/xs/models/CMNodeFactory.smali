.class public Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;
.super Ljava/lang/Object;
.source "CMNodeFactory.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final MULTIPLICITY:I = 0x1

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# instance fields
.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private maxNodeLimit:I

.field private nodeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 73
    return-void
.end method


# virtual methods
.method public getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "leftNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p3, "rightNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 111
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    .line 112
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-direct {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-object v0
.end method

.method public getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "leaf"    # Ljava/lang/Object;
    .param p3, "id"    # I
    .param p4, "position"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    .line 96
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-direct {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getCMRepeatingLeafNode(ILjava/lang/Object;IIII)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 7
    .param p1, "type"    # I
    .param p2, "leaf"    # Ljava/lang/Object;
    .param p3, "minOccurs"    # I
    .param p4, "maxOccurs"    # I
    .param p5, "id"    # I
    .param p6, "position"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    .line 102
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;-><init>(ILjava/lang/Object;IIII)V

    return-object v0
.end method

.method public getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "childNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 106
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    .line 107
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-object v0
.end method

.method public nodeCountCheck()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    if-le v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    const-string v2, "maxOccurLimit"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 124
    iput v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    .line 127
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    .line 92
    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    .line 76
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 78
    :try_start_0
    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 79
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto :goto_0
.end method

.method public resetNodeCount()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    .line 132
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 155
    .local v0, "suffixLength":I
    const-string v1, "security-manager"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 156
    const-string v1, "security-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 158
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    :goto_0
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    .line 168
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_1
    return-void

    .line 158
    .restart local v0    # "suffixLength":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 161
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v1, "internal/error-reporter"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 162
    const-string v1, "internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_1
.end method
