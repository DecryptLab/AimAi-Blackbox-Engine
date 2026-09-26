.class final Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;
.super Ljava/lang/Object;
.source "FacebookRedirectDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookRedirect"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->context:Landroid/content/Context;

    return-void
.end method

.method private createPhysicalCallbackIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 89
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    const-string p1, "android.intent.category.DEFAULT"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 93
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private findPhysicalTarget(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    if-nez p1, :cond_6

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 98
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 102
    const-string v1, "com.facebook.CustomTabActivity"

    invoke-direct {p0, v0, p2, v1}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->isEnabledTarget(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v1, :cond_a

    return-object v0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method private isEnabledTarget(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_22

    .line 111
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 112
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 113
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-boolean p0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p0, :cond_22

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_20

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private queryPhysicalActivities(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_18

    const-wide/32 v0, 0x10000

    .line 83
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    .line 81
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_18
    const/high16 v0, 0x10000

    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method routeToPhysical(Landroid/net/Uri;)V
    .registers 5

    .line 61
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_15

    .line 65
    :cond_7
    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->createPhysicalCallbackIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->queryPhysicalActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->findPhysicalTarget(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_16

    :goto_15
    return-void

    .line 70
    :cond_16
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    :try_start_22
    iget-object p0, p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_27} :catch_28
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Physical Facebook callback failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FacebookRedirect"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method routeToVirtual(Landroid/net/Uri;)Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;
    .registers 8

    .line 31
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getState(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5c

    if-nez v1, :cond_d

    goto :goto_5c

    .line 36
    :cond_d
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->consumeOAuthRedirect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 38
    sget-object p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->UNKNOWN:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-object p0

    :cond_1b
    if-gez v1, :cond_20

    .line 41
    sget-object p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->REJECTED:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-object p0

    .line 44
    :cond_20
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.facebook.CustomTabMainActivity"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 48
    invoke-direct {p0, v4, v0, v3}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->isEnabledTarget(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 49
    sget-object p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->REJECTED:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-object p0

    .line 52
    :cond_3a
    new-instance p0, Landroid/content/Intent;

    const-string v0, "CustomTabActivity.action_customTabRedirect"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    const-string v0, "CustomTabMainActivity.extra_url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->startActivity(Landroid/content/Intent;I)Z

    .line 57
    sget-object p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->VIRTUAL:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-object p0

    .line 34
    :cond_5c
    :goto_5c
    sget-object p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->REJECTED:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-object p0
.end method

###### Class top.niunaijun.blackbox.proxy.FacebookRedirectDispatcher.RouteResult (top.niunaijun.blackbox.proxy.FacebookRedirectDispatcher$RouteResult)
