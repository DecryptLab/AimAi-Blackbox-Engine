.class public Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$unregisterAccountListener;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unregisterAccountListener"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "unregisterAccountListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 415
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 419
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BAccountManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BAccountManager;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p2, p3, p1

    check-cast p2, [Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Ltop/niunaijun/blackbox/fake/frameworks/BAccountManager;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IAccountManagerProxy.updateAppPermission (top.niunaijun.blackbox.fake.service.IAccountManagerProxy$updateAppPermission)
