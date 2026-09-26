.class public Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy$getDeviceOwnerName;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IDevicePolicyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getDeviceOwnerName"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getDeviceOwnerName"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
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

    .line 68
    const-string p0, "BlackBox"

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IDevicePolicyManagerProxy.getProfileOwnerName (top.niunaijun.blackbox.fake.service.IDevicePolicyManagerProxy$getProfileOwnerName)
