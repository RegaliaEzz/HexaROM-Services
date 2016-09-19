.class public Lmf/org/apache/xerces/util/DOMUtil;
.super Ljava/lang/Object;
.source "DOMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyInto(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 18
    .param p0, "src"    # Lmf/org/w3c/dom/Node;
    .param p1, "dest"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v8

    .line 69
    .local v8, "factory":Lmf/org/w3c/dom/Document;
    instance-of v6, v8, Lmf/org/apache/xerces/dom/DocumentImpl;

    .line 72
    .local v6, "domimpl":Z
    move-object/from16 v13, p0

    .line 73
    .local v13, "start":Lmf/org/w3c/dom/Node;
    move-object/from16 v11, p0

    .line 74
    .local v11, "parent":Lmf/org/w3c/dom/Node;
    move-object/from16 v12, p0

    .line 77
    .local v12, "place":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 147
    return-void

    .line 80
    :cond_1
    const/4 v10, 0x0

    .line 81
    .local v10, "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v14

    .line 82
    .local v14, "type":I
    packed-switch v14, :pswitch_data_0

    .line 121
    :pswitch_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "can\'t copy node type, "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 123
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x29

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 121
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 84
    :pswitch_1
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v10

    .line 126
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 129
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 130
    move-object v11, v12

    .line 131
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v12

    .line 132
    move-object/from16 p1, v10

    .line 133
    goto :goto_0

    .line 88
    :pswitch_2
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v10

    .line 89
    goto :goto_1

    .line 92
    :pswitch_3
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    .line 93
    .local v7, "element":Lmf/org/w3c/dom/Element;
    move-object v10, v7

    .line 94
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 95
    .local v5, "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v5}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .line 96
    .local v2, "attrCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v2, :cond_2

    .line 97
    invoke-interface {v5, v9}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Attr;

    .line 98
    .local v1, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "attrName":Ljava/lang/String;
    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "attrValue":Ljava/lang/String;
    invoke-interface {v7, v3, v4}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v6, :cond_3

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v15

    if-nez v15, :cond_3

    .line 102
    invoke-interface {v7, v3}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v15

    check-cast v15, Lmf/org/apache/xerces/dom/AttrImpl;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    .line 96
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 108
    .end local v1    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v2    # "attrCount":I
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v4    # "attrValue":Ljava/lang/String;
    .end local v5    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v7    # "element":Lmf/org/w3c/dom/Element;
    .end local v9    # "i":I
    :pswitch_4
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v10

    .line 109
    goto :goto_1

    .line 112
    :pswitch_5
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 113
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 112
    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v10

    .line 114
    goto :goto_1

    .line 117
    :pswitch_6
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v10

    .line 118
    goto :goto_1

    .line 137
    :cond_4
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v12

    .line 138
    :goto_3
    if-nez v12, :cond_0

    if-eq v11, v13, :cond_0

    .line 139
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v12

    .line 140
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    .line 141
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_3

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static createDOMException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/DOMException;
    .locals 4
    .param p0, "code"    # S
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 846
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    .line 847
    .local v0, "de":Lmf/org/w3c/dom/DOMException;
    if-eqz p1, :cond_0

    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    :try_start_0
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :cond_0
    :goto_1
    return-object v0

    .line 846
    .end local v0    # "de":Lmf/org/w3c/dom/DOMException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 852
    .restart local v0    # "de":Lmf/org/w3c/dom/DOMException;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;
    .locals 4
    .param p0, "code"    # S
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 861
    new-instance v0, Lmf/org/w3c/dom/ls/LSException;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    .line 862
    .local v0, "lse":Lmf/org/w3c/dom/ls/LSException;
    if-eqz p1, :cond_0

    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    :try_start_0
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    :goto_1
    return-object v0

    .line 861
    .end local v0    # "lse":Lmf/org/w3c/dom/ls/LSException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 867
    .restart local v0    # "lse":Lmf/org/w3c/dom/ls/LSException;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 828
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v0, :cond_0

    .line 829
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getAnnotation()Ljava/lang/String;

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .param p0, "elem"    # Lmf/org/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 775
    invoke-interface {p0, p1}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrNS(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .param p0, "elem"    # Lmf/org/w3c/dom/Element;
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-interface {p0, p1, p2}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Lmf/org/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 806
    invoke-interface {p0, p1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrValueNS(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Lmf/org/w3c/dom/Element;
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 813
    invoke-interface {p0, p1, p2}, Lmf/org/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;
    .locals 4
    .param p0, "elem"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 786
    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 787
    .local v1, "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    new-array v0, v3, [Lmf/org/w3c/dom/Attr;

    .line 788
    .local v0, "attrArray":[Lmf/org/w3c/dom/Attr;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 790
    return-object v0

    .line 789
    :cond_0
    invoke-interface {v1, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Attr;

    aput-object v3, v0, v2

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getChildText(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 718
    if-nez p0, :cond_0

    .line 719
    const/4 v3, 0x0

    .line 737
    :goto_0
    return-object v3

    .line 723
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 725
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v0, :cond_1

    .line 737
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 726
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 727
    .local v2, "type":S
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 728
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    :cond_2
    :goto_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 730
    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 731
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getChildText(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 763
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 153
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 154
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 155
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 156
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 158
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemName"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 371
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 372
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 373
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 377
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 635
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_1

    .line 647
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 636
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v1, v0

    .line 637
    check-cast v1, Lmf/org/w3c/dom/Element;

    .line 638
    .local v1, "element":Lmf/org/w3c/dom/Element;
    invoke-interface {v1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    .end local v1    # "element":Lmf/org/w3c/dom/Element;
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemNames"    # [Ljava/lang/String;

    .prologue
    .line 493
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 494
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 495
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 496
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 502
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 497
    .restart local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 498
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 496
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getFirstChildElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 429
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 430
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 431
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "childURI":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 437
    .end local v1    # "childURI":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemNames"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 557
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 558
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 559
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_1

    .line 560
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p1

    if-lt v1, v3, :cond_2

    .line 568
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 561
    .restart local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_3

    aget-object v3, p1, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 564
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 560
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 170
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 171
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 172
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 173
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 176
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "hiddenNodes"    # Ljava/util/Hashtable;

    .prologue
    .line 188
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 189
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 190
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 191
    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 194
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 208
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 209
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 210
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 211
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 213
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemName"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 390
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 391
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 392
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 396
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 662
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_1

    .line 674
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 663
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v1, v0

    .line 664
    check-cast v1, Lmf/org/w3c/dom/Element;

    .line 665
    .local v1, "element":Lmf/org/w3c/dom/Element;
    invoke-interface {v1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 666
    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 670
    .end local v1    # "element":Lmf/org/w3c/dom/Element;
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemNames"    # [Ljava/lang/String;

    .prologue
    .line 514
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 515
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 527
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 516
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 517
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 523
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 518
    .restart local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 517
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getLastChildElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 451
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 452
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 453
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "childURI":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 459
    .end local v1    # "childURI":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemNames"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 581
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 582
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 583
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_1

    .line 584
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p1

    if-lt v1, v3, :cond_2

    .line 592
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 585
    .restart local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_3

    aget-object v3, p1, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 587
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 588
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 584
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getLastVisibleChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 225
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 226
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 227
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 228
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 231
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lmf/org/w3c/dom/Node;
    .param p1, "hiddenNodes"    # Ljava/util/Hashtable;

    .prologue
    .line 245
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 246
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 247
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 248
    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 251
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 750
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 743
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 823
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 262
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 263
    .local v0, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .end local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 264
    .restart local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 265
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 267
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemName"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 409
    .local v0, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .end local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 410
    .restart local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 411
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 415
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 689
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 690
    .local v1, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_1

    .line 702
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 691
    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v0, v1

    .line 692
    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 693
    .local v0, "element":Lmf/org/w3c/dom/Element;
    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 694
    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 698
    .end local v0    # "element":Lmf/org/w3c/dom/Element;
    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemNames"    # [Ljava/lang/String;

    .prologue
    .line 535
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 536
    .local v1, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_0

    .line 548
    const/4 v1, 0x0

    .end local v1    # "sibling":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v1

    .line 537
    .restart local v1    # "sibling":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 544
    .end local v0    # "i":I
    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 539
    .restart local v0    # "i":I
    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 540
    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 538
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getNextSiblingElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 473
    .local v0, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .end local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 474
    .restart local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 475
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "siblingURI":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 481
    .end local v1    # "siblingURI":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextSiblingElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "elemNames"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 605
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 606
    .local v1, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_0

    .line 620
    const/4 v1, 0x0

    .end local v1    # "sibling":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v1

    .line 607
    .restart local v1    # "sibling":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_1

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, p1

    if-lt v0, v3, :cond_2

    .line 616
    .end local v0    # "i":I
    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 609
    .restart local v0    # "i":I
    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_3

    aget-object v3, p1, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 611
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 612
    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 608
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 279
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 280
    .local v0, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .end local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 281
    .restart local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 282
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 285
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "hiddenNodes"    # Ljava/util/Hashtable;

    .prologue
    .line 297
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 298
    .local v0, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .end local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 299
    .restart local v0    # "sibling":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 300
    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 303
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 2
    .param p0, "elem"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 755
    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 756
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/Element;

    if-eqz v1, :cond_0

    .line 757
    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 758
    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    :goto_0
    return-object v0

    .restart local v0    # "parent":Lmf/org/w3c/dom/Node;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 818
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p0, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    .line 768
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public static getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 836
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v0, :cond_0

    .line 837
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getSyntheticAnnotation()Ljava/lang/String;

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;
    .locals 1
    .param p0, "attribute"    # Lmf/org/w3c/dom/Attr;

    .prologue
    .line 795
    invoke-interface {p0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isHidden(Lmf/org/w3c/dom/Node;)Z
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 349
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    .line 350
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v0

    .line 353
    :goto_0
    return v0

    .line 351
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_1

    .line 352
    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getReadOnly()Z

    move-result v0

    goto :goto_0

    .line 353
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z
    .locals 1
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "hiddenNodes"    # Ljava/util/Hashtable;

    .prologue
    .line 358
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    .line 359
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v0

    .line 362
    :goto_0
    return v0

    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setHidden(Lmf/org/w3c/dom/Node;)V
    .locals 3
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 313
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_1

    .line 314
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 315
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    .line 316
    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "hiddenNodes"    # Ljava/util/Hashtable;

    .prologue
    .line 321
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    .line 322
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    .line 327
    :goto_0
    return-void

    .line 325
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setVisible(Lmf/org/w3c/dom/Node;)V
    .locals 2
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 331
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_1

    .line 332
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 333
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    .line 334
    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setVisible(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "hiddenNodes"    # Ljava/util/Hashtable;

    .prologue
    const/4 v1, 0x0

    .line 339
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    .line 340
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .end local p0    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    .line 345
    :goto_0
    return-void

    .line 343
    .restart local p0    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
