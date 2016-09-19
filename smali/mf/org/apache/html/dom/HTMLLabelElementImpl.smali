.class public Lmf/org/apache/html/dom/HTMLLabelElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLLabelElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLLabelElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = 0x5022bf8f81511114L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    const-string v1, "accesskey"

    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLLabelElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "accessKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    return-object v0
.end method

.method public getHtmlFor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "for"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLabelElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_0
    const-string v0, "accesskey"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLabelElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setHtmlFor(Ljava/lang/String;)V
    .locals 1
    .param p1, "htmlFor"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, "for"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLabelElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
