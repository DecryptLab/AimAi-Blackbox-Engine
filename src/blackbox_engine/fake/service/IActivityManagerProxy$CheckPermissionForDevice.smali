.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$CheckPermissionForDevice;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckPermissionForDevice"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "checkPermissionForDevice"
.end annotation


# static fields
.field private static final UID_ARGUMENT_INDEX:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 782
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

    .line 787
    array-length p0, p3

    const/4 v0, 0x2

    if-le p0, v0, :cond_37

    aget-object p0, p3, v0

    instance-of p0, p0, Ljava/lang/Integer;

    if-eqz p0, :cond_37

    const/4 p0, 0x0

    .line 791
    aget-object v1, p3, p0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smisVirtualSystemPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 792
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 794
    :cond_1a
    aget-object p0, p3, v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v1

    if-ne p0, v1, :cond_32

    .line 795
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    .line 797
    :cond_32
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 789
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid checkPermissionForDevice arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.GetContentProvider (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$GetContentProvider)
