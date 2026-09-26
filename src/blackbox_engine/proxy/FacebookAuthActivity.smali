.class public final Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;
.super Landroidx/activity/ComponentActivity;
.source "FacebookAuthActivity.java"


# static fields
.field private static final EXTRA_AUTHORIZATION_URI:Ljava/lang/String; = "top.niunaijun.blackbox.extra.AUTHORIZATION_URI"

.field private static final EXTRA_BROWSER_PACKAGE:Ljava/lang/String; = "top.niunaijun.blackbox.extra.BROWSER_PACKAGE"

.field private static final PREFERRED_BROWSER_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FacebookAuth"


# instance fields
.field private final authLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Jcn2Xk6EiJ_gWyQH0Kb2EqXL9Ac(Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;Landroidx/browser/auth/AuthTabIntent$AuthResult;)V
    .registers 2

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->handleAuthResult(Landroidx/browser/auth/AuthTabIntent$AuthResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.chrome.dev"

    aput-object v2, v0, v1

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->PREFERRED_BROWSER_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 35
    new-instance v0, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;)V

    .line 36
    invoke-static {p0, v0}, Landroidx/browser/auth/AuthTabIntent;->registerActivityResultLauncher(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->authLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static createIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    new-instance v1, Landroid/content/ComponentName;

    .line 41
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    const-string v1, "top.niunaijun.blackbox.extra.AUTHORIZATION_URI"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 44
    const-string p0, "top.niunaijun.blackbox.extra.BROWSER_PACKAGE"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2b
    return-object v0
.end method

.method private varargs findAuthTabProvider([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 98
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 99
    invoke-direct {p0, v2}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->isAuthTabProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    return-object v2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private varargs firstAvailableProvider([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 128
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_10

    aget-object v1, p1, v0

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    return-object v1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAuthorizationUri()Landroid/net/Uri;
    .registers 4

    .line 64
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "top.niunaijun.blackbox.extra.AUTHORIZATION_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    .line 68
    :cond_12
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->parseAuthorizationRequest(Landroid/content/Intent;)Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;

    move-result-object v0

    if-nez v0, :cond_24

    return-object v1

    :cond_24
    return-object p0
.end method

.method private getCustomTabsProvider(Ljava/util/List;Z)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Custom tabs provider lookup failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FacebookAuth"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleAuthResult(Landroidx/browser/auth/AuthTabIntent$AuthResult;)V
    .registers 4

    .line 166
    iget v0, p1, Landroidx/browser/auth/AuthTabIntent$AuthResult;->resultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p1, Landroidx/browser/auth/AuthTabIntent$AuthResult;->resultUri:Landroid/net/Uri;

    if-eqz v0, :cond_13

    .line 167
    new-instance v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Landroidx/browser/auth/AuthTabIntent$AuthResult;->resultUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->routeToVirtual(Landroid/net/Uri;)Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    .line 169
    :cond_13
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->finish()V

    return-void
.end method

.method private isAuthTabProvider(Ljava/lang/String;)Z
    .registers 4

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 111
    :cond_8
    :try_start_8
    invoke-static {p0, p1}, Landroidx/browser/customtabs/CustomTabsClient;->isAuthTabSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Auth tab provider check failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FacebookAuth"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private launchAuthTab(Landroid/net/Uri;)V
    .registers 12

    .line 76
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "top.niunaijun.blackbox.extra.BROWSER_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->PREFERRED_BROWSER_PACKAGES:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->getCustomTabsProvider(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0, v3, v4}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->getCustomTabsProvider(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 79
    new-array v6, v5, [Ljava/lang/String;

    aput-object v0, v6, v4

    aput-object v1, v6, v2

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-direct {p0, v6}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->findAuthTabProvider([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_37

    .line 82
    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v4

    aput-object v1, v5, v2

    aput-object v3, v5, v7

    invoke-direct {p0, v5}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->firstAvailableProvider([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->launchBrowserFallback(Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_37
    new-instance v8, Landroidx/browser/auth/AuthTabIntent$Builder;

    invoke-direct {v8}, Landroidx/browser/auth/AuthTabIntent$Builder;-><init>()V

    invoke-virtual {v8}, Landroidx/browser/auth/AuthTabIntent$Builder;->build()Landroidx/browser/auth/AuthTabIntent;

    move-result-object v8

    .line 87
    iget-object v9, v8, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :try_start_45
    iget-object v6, p0, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->authLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v9, "fbconnect"

    invoke-virtual {v8, v6, p1, v9}, Landroidx/browser/auth/AuthTabIntent;->launch(Landroidx/activity/result/ActivityResultLauncher;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_45 .. :try_end_4c} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_4c} :catch_4d

    return-void

    :catch_4d
    move-exception v6

    goto :goto_50

    :catch_4f
    move-exception v6

    .line 91
    :goto_50
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Facebook auth tab launch failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "FacebookAuth"

    invoke-static {v8, v6}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v4

    aput-object v1, v5, v2

    aput-object v3, v5, v7

    invoke-direct {p0, v5}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->firstAvailableProvider([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->launchBrowserFallback(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private launchBrowserFallback(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Facebook browser launch failed: "

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 139
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_12
    :try_start_12
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_15} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_1b
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 150
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->finish()V

    return-void

    :catchall_19
    move-exception p1

    goto :goto_46

    :catch_1b
    move-exception p1

    goto :goto_1e

    :catch_1d
    move-exception p1

    .line 144
    :goto_1e
    :try_start_1e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 145
    const-string p2, "FacebookAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 147
    :cond_3f
    invoke-direct {p0, v1, p1}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->launchImplicitBrowser(Landroid/content/Intent;Ljava/lang/RuntimeException;)V
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_19

    .line 150
    :goto_42
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->finish()V

    return-void

    :goto_46
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->finish()V

    .line 151
    throw p1
.end method

.method private launchImplicitBrowser(Landroid/content/Intent;Ljava/lang/RuntimeException;)V
    .registers 4

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :try_start_4
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    goto :goto_b

    :catch_a
    move-exception p0

    .line 159
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Facebook browser launch failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    const-string p1, "FacebookAuth"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_6

    return-void

    .line 55
    :cond_6
    invoke-direct {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->getAuthorizationUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_10

    .line 57
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->finish()V

    return-void

    .line 60
    :cond_10
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->launchAuthTab(Landroid/net/Uri;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.proxy.FacebookAuthActivity$$ExternalSyntheticLambda0 (top.niunaijun.blackbox.proxy.FacebookAuthActivity$$ExternalSyntheticLambda0)
