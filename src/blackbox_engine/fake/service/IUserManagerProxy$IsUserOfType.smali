.class public Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$IsUserOfType;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsUserOfType"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "isUserOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p3, :cond_19

    .line 85
    array-length p0, p3

    const/4 p1, 0x2

    if-lt p0, p1, :cond_19

    const/4 p0, 0x1

    aget-object p0, p3, p0

    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_e

    goto :goto_19

    .line 88
    :cond_e
    const-string p1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    .line 86
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IUserManagerProxy.SomeUserHasSeedAccount (top.niunaijun.blackbox.fake.service.IUserManagerProxy$SomeUserHasSeedAccount)
