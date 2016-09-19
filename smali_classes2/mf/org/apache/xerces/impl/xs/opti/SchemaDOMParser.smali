.class public Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;
.source "SchemaDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;
    }
.end annotation


# static fields
.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final GENERATE_SYNTHETIC_ANNOTATION:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"


# instance fields
.field config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field private fAnnotationDepth:I

.field private fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

.field private fDepth:I

.field private fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

.field fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fGenerateSyntheticAnnotation:Z

.field private fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field private fInnerAnnotationDepth:I

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    const/4 v1, -0x1

    .line 79
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 90
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    .line 93
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    .line 95
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    .line 101
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    .line 102
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    .line 103
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 80
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 81
    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 82
    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 83
    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 84
    return-void
.end method

.method private hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z
    .locals 5
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 401
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v1

    .line 402
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 411
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 403
    :cond_0
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 405
    sget-object v3, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 406
    sget-object v3, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    .line 407
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    .line 408
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 402
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 189
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 190
    iget v6, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v6, "i":I
    :goto_0
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    if-lt v6, v0, :cond_0

    .line 214
    .end local v6    # "i":I
    :goto_1
    return-void

    .line 192
    .restart local v6    # "i":I
    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v0, v6

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    new-instance v7, Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v6

    invoke-direct {v7, v0, v6, v1}, Ljava/lang/String;-><init>([CII)V

    .line 196
    .local v7, "txt":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 197
    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    .line 198
    const-string v3, "s4s-elt-character"

    .line 199
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 196
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    .line 190
    .end local v7    # "txt":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 211
    .end local v6    # "i":I
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->characters(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_1
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->comment(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 151
    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 12
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3a

    const/4 v10, -0x1

    .line 288
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne v0, v10, :cond_3

    .line 289
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 292
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    .line 293
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    .line 294
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    .line 291
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 296
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAllAttributes()V

    .line 297
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "schemaPrefix":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    .line 299
    .local v6, "annRawName":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, v6, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 300
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    .line 301
    .local v7, "elemRawName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, v7, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 302
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string v1, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->charactersRaw(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    .line 304
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    .line 306
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    .line 347
    .end local v6    # "annRawName":Ljava/lang/String;
    .end local v7    # "elemRawName":Ljava/lang/String;
    .end local v9    # "schemaPrefix":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 298
    .restart local v9    # "schemaPrefix":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 300
    .restart local v6    # "annRawName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 321
    .end local v6    # "annRawName":Ljava/lang/String;
    .end local v9    # "schemaPrefix":Ljava/lang/String;
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne v0, v10, :cond_5

    .line 323
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 324
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 325
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 332
    :cond_4
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 333
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    .line 334
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    .line 335
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    .line 332
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v8

    .line 337
    .local v8, "newElem":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne v0, v10, :cond_6

    .line 339
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    goto :goto_2

    .line 329
    .end local v8    # "newElem":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_3

    .line 345
    .restart local v8    # "newElem":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_2
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 460
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationCDATA()V

    .line 463
    :cond_0
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    const/4 v7, -0x1

    .line 363
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-le v5, v7, :cond_2

    .line 364
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    if-ne v5, v6, :cond_0

    .line 365
    iput v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    .line 366
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 367
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    .line 392
    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    .line 394
    return-void

    .line 368
    :cond_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    if-ne v5, v6, :cond_1

    .line 369
    iput v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    .line 370
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {v5, p1, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    .line 371
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v5, v6, :cond_3

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v5, :cond_3

    .line 377
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result v4

    .line 378
    .local v4, "value":Z
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result v2

    .line 379
    .local v2, "sawann":Z
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    .line 380
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "schemaPrefix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    .line 382
    .local v0, "annRawName":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v5, v0, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 383
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    .line 384
    .local v1, "elemRawName":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-virtual {v5, v1, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 385
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string v6, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->charactersRaw(Ljava/lang/String;)V

    .line 386
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    .line 387
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    .line 390
    .end local v0    # "annRawName":Ljava/lang/String;
    .end local v1    # "elemRawName":Ljava/lang/String;
    .end local v2    # "sawann":Z
    .end local v3    # "schemaPrefix":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    goto :goto_0

    .line 381
    .restart local v2    # "sawann":Z
    .restart local v3    # "schemaPrefix":Ljava/lang/String;
    .restart local v4    # "value":Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 383
    .restart local v0    # "annRawName":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 430
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->characters(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 433
    :cond_0
    return-void
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 529
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 173
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 176
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->reset()V

    .line 536
    return-void
.end method

.method public resetNodePool()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetNodePool()V

    .line 543
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1
    .param p1, "er"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    .line 518
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    .line 519
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 483
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 484
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 501
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 445
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationCDATA()V

    .line 448
    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 112
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 113
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    .line 114
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    .line 115
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    .line 116
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 118
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    .line 119
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    .line 120
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    .line 121
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 122
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 123
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->setDocumentURI(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    .line 236
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 237
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 238
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 239
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    .line 243
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    .line 245
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    .line 246
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 247
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 248
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    .line 249
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    .line 250
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    .line 247
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 272
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    .line 255
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    .line 267
    :cond_3
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 268
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    .line 269
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    .line 270
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    .line 267
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    goto :goto_0

    .line 258
    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_5

    .line 259
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    .line 260
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_1

    .line 263
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_0
.end method
