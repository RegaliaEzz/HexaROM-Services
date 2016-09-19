.class public Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;
.super Ljava/lang/Object;
.source "DOMImplementationSourceImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementationSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;
    .locals 2
    .param p1, "features"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 55
    .local v0, "impl":Lmf/org/w3c/dom/DOMImplementation;
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 64
    :goto_0
    return-object v1

    .line 59
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
    .locals 3
    .param p1, "features"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 81
    .local v0, "impl":Lmf/org/w3c/dom/DOMImplementation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "implementations":Ljava/util/ArrayList;
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    new-instance v2, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;

    invoke-direct {v2, v1}, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z
    .locals 7
    .param p1, "impl"    # Lmf/org/w3c/dom/DOMImplementation;
    .param p2, "features"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 95
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, "st":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 97
    .local v1, "feature":Ljava/lang/String;
    const/4 v4, 0x0

    .line 99
    .local v4, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 132
    const/4 v5, 0x1

    :cond_1
    return v5

    .line 103
    :cond_2
    const/4 v2, 0x0

    .line 104
    .local v2, "isVersion":Z
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 108
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 116
    .end local v0    # "c":C
    :goto_1
    if-eqz v2, :cond_5

    .line 117
    invoke-interface {p1, v1, v4}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 121
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 122
    goto :goto_0

    .line 111
    .restart local v0    # "c":C
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "c":C
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 123
    :cond_4
    const/4 v1, 0x0

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    const/4 v6, 0x0

    invoke-interface {p1, v1, v6}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    move-object v1, v4

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
