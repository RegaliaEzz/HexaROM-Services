.class public Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
.source "DOMImplementationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementation;


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;

    .prologue
    .line 106
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 80
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 81
    .local v1, "result":Z
    if-nez v1, :cond_8

    .line 82
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    .line 83
    .local v0, "anyVersion":Z
    :goto_0
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_0
    const-string v4, "Events"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    if-nez v0, :cond_7

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 89
    :cond_1
    const-string v4, "MutationEvents"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    if-nez v0, :cond_7

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 91
    :cond_2
    const-string v4, "Traversal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    if-nez v0, :cond_7

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 93
    :cond_3
    const-string v4, "Range"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    if-nez v0, :cond_7

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 95
    :cond_4
    const-string v4, "MutationEvents"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    if-nez v0, :cond_7

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 98
    .end local v0    # "anyVersion":Z
    :cond_5
    :goto_1
    return v2

    :cond_6
    move v0, v3

    .line 82
    goto :goto_0

    .restart local v0    # "anyVersion":Z
    :cond_7
    move v2, v3

    .line 86
    goto :goto_1

    .end local v0    # "anyVersion":Z
    :cond_8
    move v2, v1

    .line 98
    goto :goto_1
.end method
