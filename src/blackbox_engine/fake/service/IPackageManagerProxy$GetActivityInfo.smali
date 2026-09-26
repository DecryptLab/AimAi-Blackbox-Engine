.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetActivityInfo;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetActivityInfo"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getActivityInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 470
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

    const/4 p0, 0x0

    .line 473
    aget-object p0, p3, p0

    check-cast p0, Landroid/content/ComponentName;

    const/4 v0, 0x1

    .line 474
    aget-object v0, p3, v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetLegacyFlags(Ljava/lang/Object;)I

    move-result v0

    .line 475
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    return-object v0

    .line 478
    :cond_1b
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcanReadHostPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 479
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.GetApplicationInfo (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$GetApplicationInfo)
