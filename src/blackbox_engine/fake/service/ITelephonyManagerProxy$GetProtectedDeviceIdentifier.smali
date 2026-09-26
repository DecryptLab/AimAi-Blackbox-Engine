.class public Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$GetProtectedDeviceIdentifier;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "ITelephonyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetProtectedDeviceIdentifier"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;
    value = {
        "getDeviceId",
        "getDeviceIdWithFeature",
        "getImeiForSlot",
        "getMeidForSlot",
        "getSubscriberId"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.ITelephonyManagerProxy.IsUserDataEnabled (top.niunaijun.blackbox.fake.service.ITelephonyManagerProxy$IsUserDataEnabled)
