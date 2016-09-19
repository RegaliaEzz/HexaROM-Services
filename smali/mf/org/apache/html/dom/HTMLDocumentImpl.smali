.class public Lmf/org/apache/html/dom/HTMLDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "HTMLDocumentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLDocument;


# static fields
.field private static final _elemClassSigHTML:[Ljava/lang/Class;

.field private static _elementTypesHTML:Ljava/util/Hashtable; = null

.field private static final serialVersionUID:J = 0x3b7a30e3bf92ceecL


# instance fields
.field private _anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _writer:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 131
    sput-object v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elemClassSigHTML:[Ljava/lang/Class;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>()V

    .line 140
    invoke-static {}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementTypes()V

    .line 141
    return-void
.end method

.method private getElementById(Ljava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 672
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 673
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 675
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    instance-of v2, v0, Lmf/org/w3c/dom/Element;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 677
    check-cast v2, Lmf/org/w3c/dom/Element;

    const-string/jumbo v3, "id"

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 679
    :cond_1
    invoke-direct {p0, p1, v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getElementById(Ljava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    .line 680
    .local v1, "result":Lmf/org/w3c/dom/Element;
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 681
    goto :goto_1

    .line 683
    .end local v1    # "result":Lmf/org/w3c/dom/Element;
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static populateElementType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 778
    :try_start_0
    sget-object v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "org.apache.html.dom."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    const-class v3, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    .line 779
    invoke-static {v2, v3, v4}, Lmf/org/apache/html/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 778
    invoke-virtual {v1, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "except":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTM019 OpenXML Error: Could not find or execute class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " implementing HTML element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 783
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static declared-synchronized populateElementTypes()V
    .locals 3

    .prologue
    .line 706
    const-class v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 772
    :goto_0
    monitor-exit v1

    return-void

    .line 708
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    const/16 v2, 0x3f

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    .line 709
    const-string v0, "A"

    const-string v2, "HTMLAnchorElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "APPLET"

    const-string v2, "HTMLAppletElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "AREA"

    const-string v2, "HTMLAreaElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v0, "BASE"

    const-string v2, "HTMLBaseElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "BASEFONT"

    const-string v2, "HTMLBaseFontElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v0, "BLOCKQUOTE"

    const-string v2, "HTMLQuoteElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "BODY"

    const-string v2, "HTMLBodyElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v0, "BR"

    const-string v2, "HTMLBRElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "BUTTON"

    const-string v2, "HTMLButtonElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "DEL"

    const-string v2, "HTMLModElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "DIR"

    const-string v2, "HTMLDirectoryElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "DIV"

    const-string v2, "HTMLDivElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v0, "DL"

    const-string v2, "HTMLDListElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "FIELDSET"

    const-string v2, "HTMLFieldSetElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "FONT"

    const-string v2, "HTMLFontElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "FORM"

    const-string v2, "HTMLFormElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "FRAME"

    const-string v2, "HTMLFrameElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, "FRAMESET"

    const-string v2, "HTMLFrameSetElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v0, "HEAD"

    const-string v2, "HTMLHeadElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v0, "H1"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "H2"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "H3"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "H4"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v0, "H5"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "H6"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "HR"

    const-string v2, "HTMLHRElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "HTML"

    const-string v2, "HTMLHtmlElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "IFRAME"

    const-string v2, "HTMLIFrameElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "IMG"

    const-string v2, "HTMLImageElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "INPUT"

    const-string v2, "HTMLInputElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "INS"

    const-string v2, "HTMLModElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "ISINDEX"

    const-string v2, "HTMLIsIndexElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "LABEL"

    const-string v2, "HTMLLabelElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "LEGEND"

    const-string v2, "HTMLLegendElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "LI"

    const-string v2, "HTMLLIElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v0, "LINK"

    const-string v2, "HTMLLinkElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v0, "MAP"

    const-string v2, "HTMLMapElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "MENU"

    const-string v2, "HTMLMenuElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "META"

    const-string v2, "HTMLMetaElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "OBJECT"

    const-string v2, "HTMLObjectElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "OL"

    const-string v2, "HTMLOListElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, "OPTGROUP"

    const-string v2, "HTMLOptGroupElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v0, "OPTION"

    const-string v2, "HTMLOptionElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v0, "P"

    const-string v2, "HTMLParagraphElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v0, "PARAM"

    const-string v2, "HTMLParamElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v0, "PRE"

    const-string v2, "HTMLPreElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "Q"

    const-string v2, "HTMLQuoteElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v0, "SCRIPT"

    const-string v2, "HTMLScriptElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v0, "SELECT"

    const-string v2, "HTMLSelectElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v0, "STYLE"

    const-string v2, "HTMLStyleElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "TABLE"

    const-string v2, "HTMLTableElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "CAPTION"

    const-string v2, "HTMLTableCaptionElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "TD"

    const-string v2, "HTMLTableCellElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v0, "TH"

    const-string v2, "HTMLTableCellElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v0, "COL"

    const-string v2, "HTMLTableColElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v0, "COLGROUP"

    const-string v2, "HTMLTableColElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v0, "TR"

    const-string v2, "HTMLTableRowElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "TBODY"

    const-string v2, "HTMLTableSectionElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, "THEAD"

    const-string v2, "HTMLTableSectionElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "TFOOT"

    const-string v2, "HTMLTableSectionElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v0, "TEXTAREA"

    const-string v2, "HTMLTextAreaElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v0, "TITLE"

    const-string v2, "HTMLTitleElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "UL"

    const-string v2, "HTMLUListElementImpl"

    invoke-static {v0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z
    .locals 6
    .param p1, "newNamespaceURI"    # Ljava/lang/String;
    .param p2, "newNodeName"    # Ljava/lang/String;
    .param p3, "el"    # Lmf/org/apache/xerces/dom/ElementImpl;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 647
    invoke-virtual {p3}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 650
    if-eqz p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 650
    goto :goto_0

    .line 654
    :cond_2
    sget-object v4, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 655
    .local v0, "newClass":Ljava/lang/Class;
    sget-object v4, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lmf/org/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 656
    .local v1, "oldClass":Ljava/lang/Class;
    if-eq v0, v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    .prologue
    .line 636
    new-instance v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;-><init>()V

    .line 637
    .local v0, "newdoc":Lmf/org/apache/html/dom/HTMLDocumentImpl;
    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 638
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V

    .line 639
    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    .line 615
    :cond_0
    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 516
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 472
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 473
    sget-object v3, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 474
    .local v1, "elemClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 481
    :try_start_0
    sget-object v3, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elemClassSigHTML:[Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 482
    .local v0, "cnst":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v0    # "cnst":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v3

    .line 484
    :catch_0
    move-exception v2

    .line 496
    .local v2, "except":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTM15 Tag \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' associated with an Element class that failed to construct.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    .end local v2    # "except":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Lmf/org/apache/html/dom/HTMLElementImpl;

    invoke-direct {v3, p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    invoke-virtual {p0, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getAnchors()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 595
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getApplets()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 568
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public declared-synchronized getBody()Lmf/org/w3c/dom/html/HTMLElement;
    .locals 7

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v4

    .line 318
    .local v4, "html":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v3

    .line 319
    .local v3, "head":Lmf/org/w3c/dom/Node;
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 321
    :try_start_1
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 322
    .local v1, "body":Lmf/org/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v6, v1, Lmf/org/w3c/dom/html/HTMLBodyElement;

    if-nez v6, :cond_0

    .line 323
    instance-of v6, v1, Lmf/org/w3c/dom/html/HTMLFrameSetElement;

    if-eqz v6, :cond_2

    .line 328
    :cond_0
    if-eqz v1, :cond_4

    .line 330
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    :try_start_2
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 333
    .local v2, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_3

    .line 330
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :try_start_3
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    move-object v6, v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    .end local v2    # "child":Lmf/org/w3c/dom/Node;
    :goto_2
    monitor-exit p0

    return-object v6

    .line 324
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 335
    .restart local v2    # "child":Lmf/org/w3c/dom/Node;
    :cond_3
    :try_start_5
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 336
    .local v5, "next":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 337
    move-object v2, v5

    goto :goto_1

    .line 330
    .end local v2    # "child":Lmf/org/w3c/dom/Node;
    .end local v5    # "next":Lmf/org/w3c/dom/Node;
    :catchall_0
    move-exception v6

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6

    .line 319
    .end local v1    # "body":Lmf/org/w3c/dom/Node;
    :catchall_1
    move-exception v6

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 317
    .end local v3    # "head":Lmf/org/w3c/dom/Node;
    .end local v4    # "html":Lmf/org/w3c/dom/Node;
    :catchall_2
    move-exception v6

    monitor-exit p0

    throw v6

    .line 345
    .restart local v1    # "body":Lmf/org/w3c/dom/Node;
    .restart local v3    # "head":Lmf/org/w3c/dom/Node;
    .restart local v4    # "html":Lmf/org/w3c/dom/Node;
    :cond_4
    :try_start_8
    new-instance v1, Lmf/org/apache/html/dom/HTMLBodyElementImpl;

    .end local v1    # "body":Lmf/org/w3c/dom/Node;
    const-string v6, "BODY"

    invoke-direct {v1, p0, v6}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 346
    .restart local v1    # "body":Lmf/org/w3c/dom/Node;
    invoke-interface {v4, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 319
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 348
    :try_start_9
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    move-object v6, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 5

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 155
    .local v2, "html":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v2, :cond_0

    .line 190
    new-instance v2, Lmf/org/apache/html/dom/HTMLHtmlElementImpl;

    .end local v2    # "html":Lmf/org/w3c/dom/Node;
    const-string v4, "HTML"

    invoke-direct {v2, p0, v4}, Lmf/org/apache/html/dom/HTMLHtmlElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 191
    .restart local v2    # "html":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 192
    .local v1, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v1, :cond_2

    .line 198
    invoke-virtual {p0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 199
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    move-object v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :goto_2
    monitor-exit p0

    return-object v4

    .line 157
    :cond_0
    :try_start_1
    instance-of v4, v2, Lmf/org/w3c/dom/html/HTMLHtmlElement;

    if-eqz v4, :cond_1

    .line 182
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    move-object v4, v0

    goto :goto_2

    .line 184
    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 194
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 195
    .local v3, "next":Lmf/org/w3c/dom/Node;
    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    move-object v1, v3

    goto :goto_1

    .line 154
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    .end local v2    # "html":Lmf/org/w3c/dom/Node;
    .end local v3    # "next":Lmf/org/w3c/dom/Node;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 2
    .param p1, "elementId"    # Ljava/lang/String;

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 405
    .local v0, "idElement":Lmf/org/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 408
    .end local v0    # "idElement":Lmf/org/w3c/dom/Element;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "idElement":Lmf/org/w3c/dom/Element;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getElementById(Ljava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 404
    .end local v0    # "idElement":Lmf/org/w3c/dom/Element;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getElementsByName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Lmf/org/apache/html/dom/NameNodeListImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/html/dom/NameNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 420
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 427
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    goto :goto_0
.end method

.method public getForms()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 586
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public declared-synchronized getHead()Lmf/org/w3c/dom/html/HTMLElement;
    .locals 6

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 227
    .local v3, "html":Lmf/org/w3c/dom/Node;
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 229
    :try_start_1
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 230
    .local v2, "head":Lmf/org/w3c/dom/Node;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v5, v2, Lmf/org/w3c/dom/html/HTMLHeadElement;

    if-eqz v5, :cond_2

    .line 234
    :cond_0
    if-eqz v2, :cond_4

    .line 236
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    :try_start_2
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 239
    .local v1, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_3

    .line 236
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :try_start_3
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    move-object v5, v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 254
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :goto_2
    monitor-exit p0

    return-object v5

    .line 231
    :cond_2
    :try_start_4
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    goto :goto_0

    .line 241
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :cond_3
    :try_start_5
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 242
    .local v4, "next":Lmf/org/w3c/dom/Node;
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 243
    move-object v1, v4

    goto :goto_1

    .line 236
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    .end local v4    # "next":Lmf/org/w3c/dom/Node;
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 227
    .end local v2    # "head":Lmf/org/w3c/dom/Node;
    :catchall_1
    move-exception v5

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 226
    .end local v3    # "html":Lmf/org/w3c/dom/Node;
    :catchall_2
    move-exception v5

    monitor-exit p0

    throw v5

    .line 251
    .restart local v2    # "head":Lmf/org/w3c/dom/Node;
    .restart local v3    # "html":Lmf/org/w3c/dom/Node;
    :cond_4
    :try_start_8
    new-instance v2, Lmf/org/apache/html/dom/HTMLHeadElementImpl;

    .end local v2    # "head":Lmf/org/w3c/dom/Node;
    const-string v5, "HEAD"

    invoke-direct {v2, p0, v5}, Lmf/org/apache/html/dom/HTMLHeadElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 252
    .restart local v2    # "head":Lmf/org/w3c/dom/Node;
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 227
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 254
    :try_start_9
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    move-object v5, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2
.end method

.method public getImages()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 559
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getLinks()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 577
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v0

    .line 268
    .local v0, "head":Lmf/org/w3c/dom/html/HTMLElement;
    const-string v3, "TITLE"

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    .line 269
    .local v1, "list":Lmf/org/w3c/dom/NodeList;
    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    .line 270
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 271
    .local v2, "title":Lmf/org/w3c/dom/Node;
    check-cast v2, Lmf/org/w3c/dom/html/HTMLTitleElement;

    .end local v2    # "title":Lmf/org/w3c/dom/Node;
    invoke-interface {v2}, Lmf/org/w3c/dom/html/HTMLTitleElement;->getText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 274
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    .end local v0    # "head":Lmf/org/w3c/dom/html/HTMLElement;
    .end local v1    # "list":Lmf/org/w3c/dom/NodeList;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    .line 605
    :cond_0
    return-void
.end method

.method public declared-synchronized setBody(Lmf/org/w3c/dom/html/HTMLElement;)V
    .locals 6
    .param p1, "newBody"    # Lmf/org/w3c/dom/html/HTMLElement;

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 366
    .local v3, "html":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v2

    .line 367
    .local v2, "head":Lmf/org/w3c/dom/Node;
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :try_start_2
    const-string v5, "BODY"

    invoke-virtual {p0, v5}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v4

    .line 370
    .local v4, "list":Lmf/org/w3c/dom/NodeList;
    invoke-interface {v4}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_3

    .line 374
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 375
    .local v0, "body":Lmf/org/w3c/dom/Node;
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 377
    move-object v1, v2

    .line 378
    .local v1, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_0

    .line 390
    :try_start_3
    invoke-interface {v3, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 375
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 392
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 399
    .end local v0    # "body":Lmf/org/w3c/dom/Node;
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :goto_1
    monitor-exit p0

    return-void

    .line 380
    .restart local v0    # "body":Lmf/org/w3c/dom/Node;
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    :try_start_6
    instance-of v5, v1, Lmf/org/w3c/dom/Element;

    if-eqz v5, :cond_2

    .line 382
    if-eq v1, v0, :cond_1

    .line 383
    invoke-interface {v3, p1, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 386
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit p1

    goto :goto_1

    .line 360
    .end local v0    # "body":Lmf/org/w3c/dom/Node;
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    .end local v2    # "head":Lmf/org/w3c/dom/Node;
    .end local v3    # "html":Lmf/org/w3c/dom/Node;
    .end local v4    # "list":Lmf/org/w3c/dom/NodeList;
    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 385
    .restart local v0    # "body":Lmf/org/w3c/dom/Node;
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    .restart local v2    # "head":Lmf/org/w3c/dom/Node;
    .restart local v3    # "html":Lmf/org/w3c/dom/Node;
    .restart local v4    # "list":Lmf/org/w3c/dom/NodeList;
    :cond_1
    :try_start_a
    invoke-interface {v3, p1, v0}, Lmf/org/w3c/dom/Node;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    .line 375
    :catchall_2
    move-exception v5

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5

    .line 367
    .end local v0    # "body":Lmf/org/w3c/dom/Node;
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    .end local v4    # "list":Lmf/org/w3c/dom/NodeList;
    :catchall_3
    move-exception v5

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 388
    .restart local v0    # "body":Lmf/org/w3c/dom/Node;
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    .restart local v4    # "list":Lmf/org/w3c/dom/NodeList;
    :cond_2
    :try_start_d
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v1

    goto :goto_0

    .line 396
    .end local v0    # "body":Lmf/org/w3c/dom/Node;
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :cond_3
    :try_start_e
    invoke-interface {v3, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 367
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 360
    :try_start_f
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 551
    return-void
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;)V
    .locals 5
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    .line 288
    .local v1, "head":Lmf/org/w3c/dom/html/HTMLElement;
    const-string v4, "TITLE"

    invoke-interface {v1, v4}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v2

    .line 289
    .local v2, "list":Lmf/org/w3c/dom/NodeList;
    invoke-interface {v2}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 290
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 291
    .local v3, "title":Lmf/org/w3c/dom/Node;
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 292
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/html/HTMLElement;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 293
    :cond_0
    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/html/HTMLTitleElement;

    move-object v4, v0

    invoke-interface {v4, p1}, Lmf/org/w3c/dom/html/HTMLTitleElement;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    .end local v3    # "title":Lmf/org/w3c/dom/Node;
    :cond_1
    :try_start_1
    new-instance v3, Lmf/org/apache/html/dom/HTMLTitleElementImpl;

    const-string v4, "TITLE"

    invoke-direct {v3, p0, v4}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 300
    .restart local v3    # "title":Lmf/org/w3c/dom/Node;
    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/html/HTMLTitleElement;

    move-object v4, v0

    invoke-interface {v4, p1}, Lmf/org/w3c/dom/html/HTMLTitleElement;->setText(Ljava/lang/String;)V

    .line 301
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/html/HTMLElement;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    .end local v1    # "head":Lmf/org/w3c/dom/html/HTMLElement;
    .end local v2    # "list":Lmf/org/w3c/dom/NodeList;
    .end local v3    # "title":Lmf/org/w3c/dom/Node;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    invoke-virtual {v0, p1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 629
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 631
    :cond_0
    return-void
.end method
