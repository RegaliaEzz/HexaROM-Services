.class Lcom/android/server/ServiceObject;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field isSterileService:Z

.field serviceMethods:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MethodPermissionPackage;",
            ">;"
        }
    .end annotation
.end field

.field servicePermissions:Lcom/android/server/PermissionPackage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Lcom/android/server/PermissionPackage;

    invoke-direct {v0}, Lcom/android/server/PermissionPackage;-><init>()V

    iput-object v0, p0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    .line 713
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 715
    return-void
.end method
