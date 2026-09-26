.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$checkPermission;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "checkPermission"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "checkPermission"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 769
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

    .line 772
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceLastUid([Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 773
    aget-object v0, p3, p0

    check-cast v0, Ljava/lang/String;

    .line 774
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smisVirtualSystemPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 775
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 777
    :cond_13
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.checkUriPermission (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$checkUriPermission)
