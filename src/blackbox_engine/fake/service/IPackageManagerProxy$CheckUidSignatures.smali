.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$CheckUidSignatures;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckUidSignatures"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "checkUidSignatures"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 368
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

    .line 371
    array-length p0, p3

    const/4 v0, 0x2

    if-lt p0, v0, :cond_6a

    const/4 p0, 0x0

    aget-object v0, p3, p0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    aget-object v2, p3, v1

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_13

    goto :goto_6a

    .line 375
    :cond_13
    check-cast v0, Ljava/lang/Number;

    .line 376
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 375
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetVirtualSignatureInfoForUid(I)Ljava/util/List;

    move-result-object v0

    .line 377
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Number;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 377
    invoke-static {v1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetVirtualSignatureInfoForUid(I)Ljava/util/List;

    move-result-object v1

    .line 379
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 380
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 382
    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_64

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_64

    .line 385
    :cond_47
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 386
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 385
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->signaturesMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 p0, -0x3

    :goto_5f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_64
    :goto_64
    const/4 p0, -0x4

    .line 383
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 373
    :cond_6a
    :goto_6a
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.GetActivityInfo (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$GetActivityInfo)
