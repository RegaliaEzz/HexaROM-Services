.class final Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;
.super Lmf/javax/xml/validation/Validator;
.source "ValidatorImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/PSVIProvider;


# static fields
.field private static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final JAXP_SOURCE_RESULT_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfigurationChanged:Z

.field private fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fErrorHandlerChanged:Z

.field private fResourceResolverChanged:Z

.field private fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

.field private fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

.field private fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 2
    .param p1, "grammarContainer"    # Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lmf/javax/xml/validation/Validator;-><init>()V

    .line 88
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 91
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    .line 94
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    .line 97
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .line 98
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 99
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 166
    const-string v4, "FeatureNameNull"

    const/4 v5, 0x0

    .line 165
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    const-string v3, "http://javax.xml.transform"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    const-string v3, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    const-string v3, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    const-string v3, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    const-string v3, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    const-string v3, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    const-string v3, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    const-string v3, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    const-string v3, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    :cond_1
    :goto_0
    return v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v3

    if-nez v3, :cond_3

    .line 187
    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    .line 188
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 189
    const-string v5, "feature-not-recognized"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    .line 188
    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-direct {v3, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_3
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    .line 193
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 194
    const-string v5, "feature-not-supported"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    .line 193
    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-direct {v3, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v3, Ljava/lang/NullPointerException;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 242
    const-string v5, "ProperyNameNull"

    .line 241
    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_0
    const-string v3, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-eqz v3, :cond_1

    .line 246
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 249
    :cond_1
    :goto_0
    return-object v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_3

    .line 254
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 255
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 256
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 255
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 260
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 261
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 260
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->restoreInitialState()V

    .line 301
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 302
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 303
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 304
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    .line 305
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 310
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    .line 312
    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 314
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    .line 146
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 203
    const-string v4, "FeatureNameNull"

    const/4 v5, 0x0

    .line 202
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_0
    const-string v2, "http://javax.xml.transform"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    const-string v2, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    const-string v2, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    const-string v2, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    const-string v2, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    const-string v2, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    const-string v2, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    const-string v2, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 215
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 216
    const-string v4, "feature-read-only"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 215
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    iput-boolean v5, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 236
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_3

    .line 225
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 226
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 227
    const-string v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 226
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 231
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 232
    const-string v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 231
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 268
    if-nez p1, :cond_0

    .line 269
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 270
    const-string v4, "ProperyNameNull"

    const/4 v5, 0x0

    .line 269
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    const-string v2, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 274
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 275
    const-string v4, "property-read-only"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 274
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    iput-boolean v5, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 294
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_2

    .line 283
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 284
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 285
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 284
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 289
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 290
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 289
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 1
    .param p1, "resourceResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    .line 155
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 156
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 6
    .param p1, "source"    # Lmf/javax/xml/transform/Source;
    .param p2, "result"    # Lmf/javax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    instance-of v0, p1, Lmf/javax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    .line 109
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    .line 142
    :goto_0
    return-void

    .line 111
    :cond_1
    instance-of v0, p1, Lmf/javax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    .line 116
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    .line 118
    :cond_3
    instance-of v0, p1, Lmf/javax/xml/transform/stax/StAXSource;

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    if-nez v0, :cond_4

    .line 121
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    .line 123
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    .line 125
    :cond_5
    instance-of v0, p1, Lmf/javax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    if-nez v0, :cond_6

    .line 128
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    .line 130
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    .line 133
    :cond_7
    if-nez p1, :cond_8

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 135
    const-string v2, "SourceParameterNull"

    const/4 v3, 0x0

    .line 134
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 140
    const-string v2, "SourceNotAccepted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 139
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
