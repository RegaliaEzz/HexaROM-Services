.class public final Lmf/org/apache/xerces/stax/events/StartElementImpl;
.super Lmf/org/apache/xerces/stax/events/ElementImpl;
.source "StartElementImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/StartElement;


# static fields
.field private static final QNAME_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field private final fAttributes:Ljava/util/Map;

.field private final fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lmf/org/apache/xerces/stax/events/StartElementImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/stax/events/StartElementImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    .line 55
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;Lmf/javax/xml/stream/Location;)V
    .locals 3
    .param p1, "name"    # Lmf/javax/xml/namespace/QName;
    .param p2, "attributes"    # Ljava/util/Iterator;
    .param p3, "namespaces"    # Ljava/util/Iterator;
    .param p4, "namespaceContext"    # Lmf/javax/xml/namespace/NamespaceContext;
    .param p5, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 65
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p3, p5}, Lmf/org/apache/xerces/stax/events/ElementImpl;-><init>(Lmf/javax/xml/namespace/QName;ZLjava/util/Iterator;Lmf/javax/xml/stream/Location;)V

    .line 66
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Lmf/org/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    .line 69
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    .line 70
    .local v0, "attr":Lmf/javax/xml/stream/events/Attribute;
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    .end local v0    # "attr":Lmf/javax/xml/stream/events/Attribute;
    :goto_0
    if-eqz p4, :cond_2

    .end local p4    # "namespaceContext":Lmf/javax/xml/namespace/NamespaceContext;
    :goto_1
    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    .line 78
    return-void

    .line 75
    .restart local p4    # "namespaceContext":Lmf/javax/xml/namespace/NamespaceContext;
    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->getInstance()Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    move-result-object p4

    goto :goto_1
.end method


# virtual methods
.method public getAttributeByName(Lmf/javax/xml/namespace/QName;)Lmf/javax/xml/stream/events/Attribute;
    .locals 1
    .param p1, "name"    # Lmf/javax/xml/namespace/QName;

    .prologue
    .line 91
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    invoke-interface {v0, p1}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 111
    const/16 v7, 0x3c

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    .line 112
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v3

    .line 113
    .local v3, "name":Lmf/javax/xml/namespace/QName;
    invoke-virtual {v3}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 115
    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    const/16 v7, 0x3a

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    .line 118
    :cond_0
    invoke-virtual {v3}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getNamespaces()Ljava/util/Iterator;

    move-result-object v5

    .line 121
    .local v5, "nsIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 127
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, "attrIter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 133
    const/16 v7, 0x3e

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    .line 138
    return-void

    .line 122
    .end local v1    # "attrIter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/javax/xml/stream/events/Namespace;

    .line 123
    .local v4, "ns":Lmf/javax/xml/stream/events/Namespace;
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    .line 124
    invoke-interface {v4, p1}, Lmf/javax/xml/stream/events/Namespace;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v3    # "name":Lmf/javax/xml/namespace/QName;
    .end local v4    # "ns":Lmf/javax/xml/stream/events/Namespace;
    .end local v5    # "nsIter":Ljava/util/Iterator;
    .end local v6    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v7, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v7, v2}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 129
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "attrIter":Ljava/util/Iterator;
    .restart local v3    # "name":Lmf/javax/xml/namespace/QName;
    .restart local v5    # "nsIter":Ljava/util/Iterator;
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    .line 130
    .local v0, "attr":Lmf/javax/xml/stream/events/Attribute;
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    .line 131
    invoke-interface {v0, p1}, Lmf/javax/xml/stream/events/Attribute;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
