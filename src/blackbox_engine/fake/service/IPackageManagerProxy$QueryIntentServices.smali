.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryIntentServices;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryIntentServices"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "queryIntentServices"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 263
    const-class p0, Landroid/content/Intent;

    invoke-static {p3, p0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 264
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isExternalAuthIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcreateResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 v0, 0x2

    .line 267
    aget-object v0, p3, v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetLegacyFlags(Ljava/lang/Object;)I

    move-result v0

    .line 268
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v1

    .line 269
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v2

    .line 268
    invoke-virtual {v1, p0, v0, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 270
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_38

    .line 273
    :cond_33
    invoke-static {p2, p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcreateResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 271
    :cond_38
    :goto_38
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.ResolveContentProvider (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$ResolveContentProvider)
