.class Lmf/javax/xml/validation/SchemaFactoryFinder$1;
.super Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;
.source "SchemaFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/validation/SchemaFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/validation/SchemaFactoryFinder;


# direct methods
.method constructor <init>(Lmf/javax/xml/validation/SchemaFactoryFinder;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lmf/javax/xml/validation/SchemaFactoryFinder$1;->this$0:Lmf/javax/xml/validation/SchemaFactoryFinder;

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;-><init>(Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;)V

    return-void
.end method


# virtual methods
.method protected value()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 524
    const-class v1, Lmf/javax/xml/validation/SchemaFactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 526
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    # getter for: Lmf/javax/xml/validation/SchemaFactoryFinder;->ss:Lmf/javax/xml/validation/SecuritySupport;
    invoke-static {}, Lmf/javax/xml/validation/SchemaFactoryFinder;->access$0()Lmf/javax/xml/validation/SecuritySupport;

    move-result-object v1

    # getter for: Lmf/javax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;
    invoke-static {}, Lmf/javax/xml/validation/SchemaFactoryFinder;->access$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/javax/xml/validation/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method
