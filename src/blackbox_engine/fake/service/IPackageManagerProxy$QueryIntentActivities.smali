.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryIntentActivities;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryIntentActivities"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "queryIntentActivities"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private static shouldUseEmbeddedMetaLogin(Landroid/content/Intent;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6f

    .line 211
    const-string v1, "android.intent.action.VIEW"

    .line 212
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v1, "android.intent.category.DEFAULT"

    .line 213
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v1, "android.intent.category.BROWSABLE"

    .line 214
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 215
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_6f

    if-eqz p1, :cond_6f

    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_6f

    .line 220
    :cond_2e
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_35

    return v0

    .line 225
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_49

    const/4 v1, 0x0

    goto :goto_4b

    .line 226
    :cond_49
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_4b
    if-eqz v1, :cond_39

    .line 227
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 228
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "com.facebook.CustomTabActivity"

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 236
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 235
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->hasInstalledExternalAuthPackage(Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-eqz p0, :cond_6f

    const/4 p0, 0x1

    return p0

    :cond_6f
    :goto_6f
    return v0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 192
    const-class p0, Landroid/content/Intent;

    invoke-static {p3, p0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 193
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isExternalAuthIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcreateResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 196
    :cond_17
    const-class v0, Ljava/lang/String;

    invoke-static {p3, v0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 197
    aget-object v1, p3, v1

    invoke-static {v1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smgetLegacyFlags(Ljava/lang/Object;)I

    move-result v1

    .line 198
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v2

    .line 199
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    .line 198
    invoke-virtual {v2, p0, v1, v0, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryIntentActivities;->shouldUseEmbeddedMetaLogin(Landroid/content/Intent;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcreateResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_41
    if-eqz v0, :cond_4f

    .line 203
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4a

    goto :goto_4f

    .line 206
    :cond_4a
    invoke-static {p2, v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->-$$Nest$smcreateResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 204
    :cond_4f
    :goto_4f
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.QueryIntentServices (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$QueryIntentServices)
