.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$HasSigningCertificate;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HasSigningCertificate"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "hasSigningCertificate"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 393
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

    .line 396
    const-class p0, Ljava/lang/String;

    invoke-static {p3, p0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 397
    invoke-static {p3}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetCertificate([Ljava/lang/Object;)[B

    move-result-object v0

    .line 398
    invoke-static {p3, v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetCertificateType([Ljava/lang/Object;[B)I

    move-result v1

    if-nez p0, :cond_14

    const/4 v2, 0x0

    goto :goto_18

    .line 401
    :cond_14
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    :goto_18
    if-eqz v2, :cond_23

    .line 403
    invoke-static {v2, v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->hasSigningCertificate(Landroid/content/pm/PackageInfo;[BI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 406
    :cond_23
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isManagedPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    .line 407
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 409
    :cond_2f
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.HasUidSigningCertificate (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$HasUidSigningCertificate)
