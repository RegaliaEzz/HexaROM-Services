.class public Lmf/org/apache/html/dom/HTMLBRElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLBRElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLBRElement;


# static fields
.field private static final serialVersionUID:J = 0x4544e279f8162feL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getClear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBRElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBRElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClear(Ljava/lang/String;)V
    .locals 1
    .param p1, "clear"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "clear"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBRElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
