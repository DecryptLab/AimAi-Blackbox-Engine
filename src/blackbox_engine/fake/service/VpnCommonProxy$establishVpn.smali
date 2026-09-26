.class public Ltop/niunaijun/blackbox/fake/service/VpnCommonProxy$establishVpn;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "VpnCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/VpnCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "establishVpn"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "establishVpn"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private handlePackage(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_14

    .line 55
    :cond_3
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 56
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_14
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

    const/4 v0, 0x0

    .line 44
    aget-object v0, p3, v0

    invoke-static {v0}, Lblack/com/android/internal/net/BRVpnConfig;->get(Ljava/lang/Object;)Lblack/com/android/internal/net/VpnConfigContext;

    move-result-object v0

    .line 45
    const-class v1, Ltop/niunaijun/blackbox/proxy/ProxyVpnService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lblack/com/android/internal/net/VpnConfigContext;->_set_user(Ljava/lang/Object;)V

    .line 47
    invoke-interface {v0}, Lblack/com/android/internal/net/VpnConfigContext;->allowedApplications()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/fake/service/VpnCommonProxy$establishVpn;->handlePackage(Ljava/util/List;)V

    .line 48
    invoke-interface {v0}, Lblack/com/android/internal/net/VpnConfigContext;->disallowedApplications()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/service/VpnCommonProxy$establishVpn;->handlePackage(Ljava/util/List;)V

    .line 49
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.VpnCommonProxy.setVpnPackageAuthorization (top.niunaijun.blackbox.fake.service.VpnCommonProxy$setVpnPackageAuthorization)
