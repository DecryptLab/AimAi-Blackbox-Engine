.class public Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy$GetDeviceOwnerComponent;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IDevicePolicyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDeviceOwnerComponent"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getDeviceOwnerComponent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
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

    .line 59
    new-instance p0, Landroid/content/ComponentName;

    const-string p1, ""

    invoke-direct {p0, p1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IDevicePolicyManagerProxy.GetStorageEncryptionStatus (top.niunaijun.blackbox.fake.service.IDevicePolicyManagerProxy$GetStorageEncryptionStatus)
