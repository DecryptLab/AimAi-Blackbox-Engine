.class public Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy$GetAccountTypesWithManagementDisabled;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IDevicePolicyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAccountTypesWithManagementDisabled"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;
    value = {
        "getAccountTypesWithManagementDisabled",
        "getAccountTypesWithManagementDisabledAsUser"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
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

    .line 94
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IDevicePolicyManagerProxy.GetDeviceOwnerComponent (top.niunaijun.blackbox.fake.service.IDevicePolicyManagerProxy$GetDeviceOwnerComponent)
