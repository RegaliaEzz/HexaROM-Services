.class public Lmf/org/apache/xml/serialize/OutputFormat;
.super Ljava/lang/Object;
.source "OutputFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/OutputFormat$DTD;,
        Lmf/org/apache/xml/serialize/OutputFormat$Defaults;
    }
.end annotation


# instance fields
.field private _allowJavaNames:Z

.field private _cdataElements:[Ljava/lang/String;

.field private _doctypePublic:Ljava/lang/String;

.field private _doctypeSystem:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

.field private _indent:I

.field private _lineSeparator:Ljava/lang/String;

.field private _lineWidth:I

.field private _mediaType:Ljava/lang/String;

.field private _method:Ljava/lang/String;

.field private _nonEscapingElements:[Ljava/lang/String;

.field private _omitComments:Z

.field private _omitDoctype:Z

.field private _omitXmlDeclaration:Z

.field private _preserve:Z

.field private _preserveEmptyAttributes:Z

.field private _standalone:Z

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 158
    const-string v0, "UTF-8"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 166
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 189
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 195
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 201
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 207
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    .line 227
    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    .line 233
    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 240
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "indenting"    # Z

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 158
    const-string v0, "UTF-8"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 166
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 189
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 195
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 201
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 207
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    .line 227
    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    .line 233
    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 240
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 270
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Document;)V
    .locals 2
    .param p1, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 158
    const-string v0, "UTF-8"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 166
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 189
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 195
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 201
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 207
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    .line 227
    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    .line 233
    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 240
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 286
    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichMethod(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 287
    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichDoctypePublic(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichDoctypeSystem(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->whichMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMediaType(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Document;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "doc"    # Lmf/org/w3c/dom/Document;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "indenting"    # Z

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Lmf/org/w3c/dom/Document;)V

    .line 309
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    .line 311
    return-void
.end method

.method public static whichDoctypePublic(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    .line 907
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .line 908
    .local v0, "doctype":Lmf/org/w3c/dom/DocumentType;
    if-eqz v0, :cond_0

    .line 912
    :try_start_0
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 918
    :goto_0
    return-object v1

    .line 913
    :catch_0
    move-exception v1

    .line 916
    :cond_0
    instance-of v1, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-eqz v1, :cond_1

    .line 917
    const-string v1, "-//W3C//DTD XHTML 1.0 Strict//EN"

    goto :goto_0

    .line 918
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static whichDoctypeSystem(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    .line 931
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .line 932
    .local v0, "doctype":Lmf/org/w3c/dom/DocumentType;
    if-eqz v0, :cond_0

    .line 936
    :try_start_0
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 942
    :goto_0
    return-object v1

    .line 937
    :catch_0
    move-exception v1

    .line 940
    :cond_0
    instance-of v1, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-eqz v1, :cond_1

    .line 941
    const-string v1, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    goto :goto_0

    .line 942
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static whichMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 952
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const-string v0, "text/xml"

    .line 962
    :goto_0
    return-object v0

    .line 954
    :cond_0
    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    const-string v0, "text/html"

    goto :goto_0

    .line 956
    :cond_1
    const-string v0, "xhtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    const-string v0, "text/html"

    goto :goto_0

    .line 958
    :cond_2
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 959
    const-string v0, "text/plain"

    goto :goto_0

    .line 960
    :cond_3
    const-string v0, "fop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    const-string v0, "application/pdf"

    goto :goto_0

    .line 962
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static whichMethod(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 5
    .param p0, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    .line 861
    instance-of v3, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-eqz v3, :cond_0

    .line 862
    const-string v3, "html"

    .line 894
    :goto_0
    return-object v3

    .line 870
    :cond_0
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 871
    .local v1, "node":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v1, :cond_1

    .line 894
    const-string v3, "xml"

    goto :goto_0

    .line 873
    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 874
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 875
    const-string v3, "html"

    goto :goto_0

    .line 876
    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "root"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 877
    const-string v3, "fop"

    goto :goto_0

    .line 879
    :cond_3
    const-string v3, "xml"

    goto :goto_0

    .line 881
    :cond_4
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 885
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 891
    .end local v0    # "i":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    .line 887
    .restart local v0    # "i":I
    .restart local v2    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_7

    .line 888
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    .line 889
    const-string v3, "xml"

    goto :goto_0

    .line 886
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getCDataElements()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingInfo()Lmf/org/apache/xml/serialize/EncodingInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/Encodings;->getEncodingInfo(Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 476
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    return v0
.end method

.method public getIndenting()Z
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastPrintable()C
    .locals 2

    .prologue
    .line 834
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const/16 v0, 0xff

    .line 838
    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    goto :goto_0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getNonEscapingElements()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    return-object v0
.end method

.method public getOmitComments()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    return v0
.end method

.method public getOmitDocumentType()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    return v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    return v0
.end method

.method public getPreserveEmptyAttributes()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return v0
.end method

.method public getPreserveSpace()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    return v0
.end method

.method public getStandalone()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    return-object v0
.end method

.method public isCDataElement(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v1

    .line 666
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 667
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 668
    const/4 v1, 0x1

    goto :goto_0

    .line 666
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isNonEscapingElement(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 707
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v1

    .line 710
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 711
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    const/4 v1, 0x1

    goto :goto_0

    .line 710
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setAllowJavaNames(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 484
    return-void
.end method

.method public setAllowJavaNames()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    return v0
.end method

.method public setCDataElements([Ljava/lang/String;)V
    .locals 0
    .param p1, "cdataElements"    # [Ljava/lang/String;

    .prologue
    .line 681
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    .line 682
    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 531
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 457
    return-void
.end method

.method public setEncoding(Lmf/org/apache/xml/serialize/EncodingInfo;)V
    .locals 1
    .param p1, "encInfo"    # Lmf/org/apache/xml/serialize/EncodingInfo;

    .prologue
    .line 464
    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/EncodingInfo;->getIANAName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    .line 465
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 466
    return-void
.end method

.method public setIndent(I)V
    .locals 1
    .param p1, "indent"    # I

    .prologue
    .line 404
    if-gez p1, :cond_0

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_0
    iput p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    goto :goto_0
.end method

.method public setIndenting(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 422
    if-eqz p1, :cond_0

    .line 423
    const/4 v0, 0x4

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 424
    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_0
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 427
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 1
    .param p1, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 754
    if-nez p1, :cond_0

    .line 755
    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    .line 758
    :goto_0
    return-void

    .line 757
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLineWidth(I)V
    .locals 1
    .param p1, "lineWidth"    # I

    .prologue
    .line 810
    if-gtz p1, :cond_0

    .line 811
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 814
    :goto_0
    return-void

    .line 813
    :cond_0
    iput p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 514
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setNonEscapingElements([Ljava/lang/String;)V
    .locals 0
    .param p1, "nonEscapingElements"    # [Ljava/lang/String;

    .prologue
    .line 725
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    .line 726
    return-void
.end method

.method public setOmitComments(Z)V
    .locals 0
    .param p1, "omit"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 574
    return-void
.end method

.method public setOmitDocumentType(Z)V
    .locals 0
    .param p1, "omit"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 595
    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0
    .param p1, "omit"    # Z

    .prologue
    .line 615
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 616
    return-void
.end method

.method public setPreserveEmptyAttributes(Z)V
    .locals 0
    .param p1, "preserve"    # Z

    .prologue
    .line 825
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 0
    .param p1, "preserve"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 784
    return-void
.end method

.method public setStandalone(Z)V
    .locals 0
    .param p1, "standalone"    # Z

    .prologue
    .line 638
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    .line 639
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    .line 368
    return-void
.end method
