.class public Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
.super Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;
.source "ResolvingXMLReader.java"


# static fields
.field public static namespaceAware:Z

.field public static validating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;-><init>()V

    .line 61
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 62
    .local v2, "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    sget-boolean v3, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {v2, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 63
    sget-boolean v3, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {v2, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 65
    :try_start_0
    invoke-virtual {v2}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v1

    .line 66
    .local v1, "parser":Lmf/javax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "parser":Lmf/javax/xml/parsers/SAXParser;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 4
    .param p1, "manager"    # Lmf/org/apache/xml/resolver/CatalogManager;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    .line 81
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 82
    .local v2, "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    sget-boolean v3, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {v2, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 83
    sget-boolean v3, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {v2, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 85
    :try_start_0
    invoke-virtual {v2}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v1

    .line 86
    .local v1, "parser":Lmf/javax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "parser":Lmf/javax/xml/parsers/SAXParser;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
