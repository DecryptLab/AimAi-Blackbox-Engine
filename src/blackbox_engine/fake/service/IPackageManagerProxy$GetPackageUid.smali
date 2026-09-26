.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetPackageUid;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetPackageUid"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getPackageUid"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 327
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 330
    const-class p0, Ljava/lang/String;

    invoke-static {p3, p0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 331
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 332
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v2

    .line 331
    invoke-virtual {v0, p0, v1, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 334
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 336
    :cond_1e
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcanReadHostPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 337
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_29
    const/4 p0, -0x1

    .line 339
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.GetPackagesForUid (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$GetPackagesForUid)
