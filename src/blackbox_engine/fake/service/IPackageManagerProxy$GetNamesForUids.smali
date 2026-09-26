.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetNamesForUids;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNamesForUids"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getNamesForUids"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 624
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

    const/4 p0, 0x0

    .line 627
    aget-object v0, p3, p0

    check-cast v0, [I

    .line 628
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 629
    array-length p2, p1

    array-length p3, v0

    if-eq p2, p3, :cond_14

    .line 630
    :cond_11
    array-length p1, v0

    new-array p1, p1, [Ljava/lang/String;

    :cond_14
    move p2, p0

    .line 632
    :goto_15
    array-length p3, v0

    if-ge p2, p3, :cond_2c

    .line 633
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p3

    aget v1, v0, p2

    invoke-virtual {p3, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    .line 634
    array-length v1, p3

    if-lez v1, :cond_29

    .line 635
    aget-object p3, p3, p0

    aput-object p3, p1, p2

    :cond_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_2c
    return-object p1
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.GetPackageInfo (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$GetPackageInfo)
