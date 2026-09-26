.class public Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivities;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartActivities"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "startActivities"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntents()I
    .registers 1

    .line 179
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isR()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    const/4 p0, 0x2

    return p0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivities;->getIntents()I

    move-result p0

    add-int/lit8 v0, p0, 0x1

    .line 162
    aget-object v1, p3, p0

    move-object v4, v1

    check-cast v4, [Landroid/content/Intent;

    add-int/lit8 v1, p0, 0x2

    .line 163
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    add-int/lit8 p0, p0, 0x3

    .line 164
    aget-object v0, p3, v1

    move-object v6, v0

    check-cast v6, Landroid/os/IBinder;

    .line 165
    aget-object p0, p3, p0

    move-object v7, p0

    check-cast v7, Landroid/os/Bundle;

    .line 167
    invoke-static {v4}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->isSelf([Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_29

    .line 168
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 171
    :cond_29
    array-length p0, v4

    const/4 p2, 0x0

    :goto_2b
    if-ge p2, p0, :cond_3d

    aget-object p3, v4, p2

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 174
    :cond_3d
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v2

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual/range {v2 .. v7}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.ActivityManagerCommonProxy.StartActivity (top.niunaijun.blackbox.fake.service.ActivityManagerCommonProxy$StartActivity)
