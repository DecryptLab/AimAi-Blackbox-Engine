.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$HasUidSigningCertificate;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HasUidSigningCertificate"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "hasUidSigningCertificate"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 414
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 417
    array-length p0, p3

    if-eqz p0, :cond_49

    const/4 p0, 0x0

    aget-object v0, p3, p0

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_b

    goto :goto_49

    .line 420
    :cond_b
    check-cast v0, Ljava/lang/Number;

    .line 421
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 420
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetVirtualSignatureInfoForUid(I)Ljava/util/List;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 423
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 425
    :cond_20
    invoke-static {p3}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetCertificate([Ljava/lang/Object;)[B

    move-result-object p1

    .line 426
    invoke-static {p3, p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetCertificateType([Ljava/lang/Object;[B)I

    move-result p2

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 428
    invoke-static {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->hasSigningCertificate(Landroid/content/pm/PackageInfo;[BI)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 p0, 0x1

    .line 430
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 433
    :cond_44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 418
    :cond_49
    :goto_49
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.QueryBroadcastReceivers (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$QueryBroadcastReceivers)
