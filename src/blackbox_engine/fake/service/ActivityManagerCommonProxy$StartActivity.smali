.class public Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivity;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "ActivityManagerCommonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartActivity"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "startActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private getAuthorizationRequest(Landroid/content/Intent;)Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;
    .registers 3

    .line 108
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->parseAuthorizationRequest(Landroid/content/Intent;)Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 110
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIntent([Ljava/lang/Object;)Landroid/content/Intent;
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivity;->getIntentIndex([Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_8
    aget-object p0, p1, p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method private getIntentIndex([Ljava/lang/Object;)I
    .registers 3

    .line 140
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isR()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x3

    goto :goto_9

    :cond_8
    const/4 p0, 0x2

    .line 145
    :goto_9
    array-length v0, p1

    if-ge p0, v0, :cond_13

    aget-object v0, p1, p0

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_13

    return p0

    :cond_13
    const/4 p0, 0x0

    .line 148
    :goto_14
    array-length v0, p1

    if-ge p0, v0, :cond_21

    .line 149
    aget-object v0, p1, p0

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_1e

    return p0

    :cond_1e
    add-int/lit8 p0, p0, 0x1

    goto :goto_14

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method private prepareOAuthRedirect(Landroid/content/Intent;[Ljava/lang/Object;Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;)Z
    .registers 8

    .line 117
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    .line 118
    invoke-virtual {p3}, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p3}, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p3}, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->getState()Ljava/lang/String;

    move-result-object p3

    .line 121
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    .line 117
    invoke-virtual {v0, v1, v2, p3, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->registerOAuthRedirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1c

    return v0

    .line 125
    :cond_1c
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivity;->getIntentIndex([Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_23

    return v0

    .line 129
    :cond_23
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->createIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, p2, p0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    invoke-direct {p0, p3}, Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivity;->getIntent([Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_e

    .line 45
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 47
    :cond_e
    const-string v1, "_B_|_target_"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 48
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1b
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->isRequestInstall(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    .line 51
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Ltop/niunaijun/blackbox/fake/provider/FileProviderHandler;->convertFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    .line 52
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1, p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->requestInstallPackage(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 55
    :cond_3d
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Ltop/niunaijun/blackbox/fake/provider/FileProviderHandler;->convertFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 58
    :cond_51
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    :cond_88
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v1

    .line 66
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    const/16 v5, 0x80

    .line 63
    invoke-virtual {v1, v0, v5, v3, v4}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_e4

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b4

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_b4

    .line 71
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b8

    .line 73
    :cond_b4
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_b8
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v3

    .line 78
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v6

    .line 75
    invoke-virtual {v3, v0, v5, v4, v6}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_e3

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivity;->getAuthorizationRequest(Landroid/content/Intent;)Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;

    move-result-object v1

    if-eqz v1, :cond_de

    .line 85
    invoke-direct {p0, v0, p3, v1}, Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy$StartActivity;->prepareOAuthRedirect(Landroid/content/Intent;[Ljava/lang/Object;Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;)Z

    move-result p0

    if-eqz p0, :cond_de

    .line 86
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 88
    :cond_de
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e3
    move-object v1, v3

    .line 93
    :cond_e4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 94
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v3

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    .line 96
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getIntent([Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v5

    .line 97
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getResolvedType([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getResultTo([Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v7

    .line 99
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getResultWho([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 100
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getRequestCode([Ljava/lang/Object;)I

    move-result v9

    .line 101
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getFlags([Ljava/lang/Object;)I

    move-result v10

    .line 102
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->getOptions([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v11

    .line 95
    invoke-virtual/range {v3 .. v11}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.ActivityManagerCommonProxy.StartIntentSenderForResult (top.niunaijun.blackbox.fake.service.ActivityManagerCommonProxy$StartIntentSenderForResult)
