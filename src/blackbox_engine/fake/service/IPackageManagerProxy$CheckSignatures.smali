.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$CheckSignatures;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckSignatures"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "checkSignatures"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 344
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

    .line 347
    array-length p0, p3

    const/4 v0, 0x0

    if-lez p0, :cond_e

    const/4 p0, 0x0

    aget-object p0, p3, p0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 348
    check-cast p0, Ljava/lang/String;

    goto :goto_f

    :cond_e
    move-object p0, v0

    .line 350
    :goto_f
    array-length v1, p3

    const/4 v2, 0x1

    if-le v1, v2, :cond_1c

    aget-object v1, p3, v2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 351
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_1c
    if-eqz p0, :cond_48

    if-nez v0, :cond_21

    goto :goto_48

    .line 356
    :cond_21
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 357
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v1, :cond_3f

    if-nez v2, :cond_3f

    .line 359
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isManagedPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 360
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isManagedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3f

    .line 363
    :cond_3a
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 361
    :cond_3f
    :goto_3f
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcompareVirtualSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 354
    :cond_48
    :goto_48
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.CheckUidSignatures (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$CheckUidSignatures)
