.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetInstalledPackages;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetInstalledPackages"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getInstalledPackages"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 514
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    .line 518
    aget-object p0, p3, p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetLegacyFlags(Ljava/lang/Object;)I

    move-result p0

    .line 519
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result p3

    invoke-virtual {p1, p0, p3}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p0

    .line 520
    invoke-static {p2, p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcreateInstalledPackagesResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.GetInstallerPackageName (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$GetInstallerPackageName)
